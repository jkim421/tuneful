import React from 'react';
import {Elements, StripeProvider} from 'react-stripe-elements';
import DonateCardContainer from './donate_card_container'

class DonateForm extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    return (
      <StripeProvider apiKey="pk_test_TYooMQauvdEDq54NiTphI7jx">
        <div className="donate-form-container">
          <Elements>
            <DonateCardContainer artist={this.props.artist}/>
          </Elements>
        </div>
      </StripeProvider>
    );
  }
}

export default DonateForm;
