import React from 'react';

export default function Modal(props) {

  if (props.credits === 'complete') {
    return (
      <div>
        <div className='background-modal'>
          <div className='intro-modal rounded shadow m-auto d-flex p-4'>
            <div className='m-auto align-self-center text-center text-white'>
              <div>Congratulations, this is the end of the e-commerce Athletix Gear Demo.  <br>Thank you! </br></div>
              <button className="btn btn-primary mt-3"
                onClick={props.callback}>Acknowledge</button>
            </div>
          </div>
        </div>
      </div>
    );
  }

  return (
    <div>
      <div className='background-modal'>
        <div className='intro-modal rounded shadow m-auto d-flex p-4'>
          <div className='m-auto align-self-center text-center text-white'>
            <div>Athletix Gear is a LAMP stack content management app that was created strictly for demonstration.
              By clicking the button below, you acknowledge that no purchases will be made,
              no payment processing will be done,
              personal information should not be used during checkout,
              such as real names, addresses, or credit card numbers.</div>
            <button className="btn btn-primary mt-3"
              onClick={props.callback}>Acknowledge</button>
          </div>
        </div>
      </div>
    </div>
  );
}
