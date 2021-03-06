import React from 'react';

function CartSummaryItem(props) {
  const price = `$${(props.product.price / 100).toFixed(2)}`;
  return (
    <div className="cart-item justify-content-between col-12 mx-auto bg-dark rounded">
      <img className="img img-fluid text-center rounded my-5" src={props.product.image} />
      <div className="item-container text-white m-3 text-center d-flex align-self-center">
        <div className="mt-3 text-center">
          <h5 className="title">{props.product.name}</h5>
          <div className="price mb-2 h-5">{price}</div>
          <div className='text-center mb-3'>
            <p className="m-0"> Quantity </p>
            <i className="fa fa-minus-circle fa-lg m-2"
              style={{ cursor: 'pointer' }}
              aria-hidden="true"
              onClick={() => props.product.quantity > 1 ? props.callbackQuantity(props.product, '-') : props.callbackRemoveItem(props.product)}></i>
            <input disabled className="value text-center align-self-center"
              placeholder={props.product.quantity}
              style={{ width: '10vw', height: '1.4rem' }} />
            <i className="fa fa-plus-circle fa-lg m-2"
              style={{ cursor: 'pointer' }}
              aria-hidden="true"
              onClick={() => props.callbackQuantity(props.product, '+')}></i>
          </div>
          <div className="text">{props.product.shortDescription}</div>
          <div className="text-right mt-4">
            <button className="btn btn-danger"
              onClick={() => props.callbackRemoveItem(props.product)}>
              Remove Item </button>
          </div>
        </div>
      </div>
    </div >
  );
}

export default CartSummaryItem;
