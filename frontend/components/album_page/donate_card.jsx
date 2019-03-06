import React from 'react';
import {Elements, StripeProvider} from 'react-stripe-elements';

import { CardElement, injectStripe } from 'react-stripe-elements';

class DonateCard extends React.Component {
  constructor(props) {
    super(props);
    this.submit = this.submit.bind(this);
  }

  submit() {

  }

  // async submit(ev) {
  //   // User clicked submit
  // }

  render() {
    return (
      <div className="donate-form">
        <h1 className="donate-header">
          Send a tip to {this.props.artist}
        </h1>
        <div className="donate-description">
          <div className="donate-intro">
            Music on tuneful is free to stream and download, any tips you'd like to provide
            to the artists is much appreciated!
          </div>
          <div className="donate-disclaimer">
            ** Do not use! **
          </div>
        </div>
        <div className="donate-stripe">
          <CardElement/>
        </div>
        <div className="donate-form-btns">
          <button
            className="donate-form-btn donate-form-submit"
            onClick={this.submit}
          >
            Send Tip
          </button>
          <button
            className="donate-form-btn donate-form-cancel"
            onClick={this.props.closeModal}
          >
            Cancel
          </button>
        </div>
      </div>
    );
  }
}

export default injectStripe(DonateCard);
