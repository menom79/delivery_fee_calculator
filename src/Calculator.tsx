import { FormEvent, FC, useState } from "react";

const Calculator: FC = () => {
  const [cart, setCart] = useState<number>();
  const [distance, setDistance] = useState<number>();
  const [amount, setAmount] = useState<number>();
  const [time, setTime] = useState<string>();
  const [price, setPrice] = useState<number>();

  const calculateFee = (e: FormEvent<HTMLFormElement>) => {
    e.preventDefault();
    let total:number = 0;
    
    if (cart && cart >= 200) {
      setPrice(0);
    } else {
      if (cart && cart < 10) {
        total += 10 - cart
      }

      if (distance && distance >= 1000) {
        total += 2; //1300
        const remaining = distance - 1000; //300
        total += Math.ceil(remaining / 500); //300/500=0.6=1
      } else {
        total += 2;
      }

      if (amount && amount > 4) {
        total += (amount-4) * 0.5;
        if (amount > 12) {
          total += 1.2;
        }
      }

      if (time) {
        const date = new Date(time)
        const day = date.getDay()
        if (day === 5) {
          const _time = date.getHours()
          if (_time >= 15 && _time <= 19) {
            total *= 1.2
          }
        }
      }

      // Ensure the minimum delivery fee is 2 euros
      // total = distance ? (distance < 500 ? Math.max(2, total) : Math.max(2, total)) : Math.max(2, total);

      // Upto two decimal value
      total = Number(total.toFixed(2));

      const minVal = Math.min(15, total)
      setPrice(minVal);
    }
  };

  return (
    <div className="fee-container">
      <div className="title-section">Delivery Fee Calculator</div>
      <div className="main-section">
        <form onSubmit={calculateFee}>
          <div className="input-row">
            <label htmlFor="cartValue">Cart Value (€)</label>
            <input
              id="cartValue"
              data-test-id="cartValue"
              type="number"
              step="any"
              placeholder="Cart value in euro"
              value={cart}
              onChange={(e) => setCart(parseFloat(e.target.value))}
            />
          </div>
          <div className="input-row">
            <label htmlFor="deliveryDistance">Delivery Distance (m)</label>
            <input
              id="deliveryDistance"
              data-test-id="deliveryDistance"
              type="number"
              placeholder="Distance in meter"
              value={distance}
              onChange={(e) => setDistance(parseInt(e.target.value))}
            />
          </div>
          <div className="input-row">
            <label htmlFor="amountOfItems">Amount Of Items</label>
            <input
              id="amountOfItems"
              data-test-id="amountOfItems"
              type="number"
              placeholder="Number of items"
              value={amount}
              onChange={(e) => setAmount(parseInt(e.target.value))}
            />
          </div>
          <div className="input-row">
            <label htmlFor="time">Time</label>
            <input
              id="time"
              data-test-id="time"
              type="datetime-local"
              value={time}
              onChange={(e) => setTime(e.target.value)}
            />
          </div>
          <input
            type="submit"
            value="Calculate Delivery Price"
            data-test-id="fee"
            className="submit-btn"
          />
        </form>
      </div>
      {<div>Delivery price: {price} €</div>}
    </div>
  );
};

export default Calculator;
