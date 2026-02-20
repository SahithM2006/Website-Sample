import React from 'react';
import { Link } from 'react-router-dom';
import '../styles/Pages.css';

const ThankYou = () => {
  return (
    <section className="thankyou-section">
      <h2 className="section-title">Thank You!</h2>
      <p>Thank you for contacting ArchiSpace Architects. We will get back to you soon.</p>
      <Link to="/" className="btn-home">
        Back to Home
      </Link>
    </section>
  );
};

export default ThankYou;
