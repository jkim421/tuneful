import React from 'react';

const Footer = () => {
  return (
    <div className="footer-body">
      <p className="footer-text">
        <a
          className="footer-link"
          href="https://jkim421.github.io/"
          target="_blank">created by john kim</a> &bull;
        <a
          className="footer-link"
          href="https://github.com/jkim421/tuneful"
          target="_blank"> github</a></p>
      <a
        href="https://bandcamp.com/"
        target="_blank"
        className="footer-link">modeled on bandcamp</a>
      <span>
        <a
          href="https://www.metmuseum.org/about-the-met/policies-and-documents/open-access"
          target="_blank"
          className="footer-link">images from The Met Open Access</a>
        <span className="footer-separator"> | </span>
        <a
          href="http://freemusicarchive.org/faq"
          target="_blank"
          className="footer-link">music from the Free Music Archive</a>
      </span>
    </div>
  );
}

export default Footer;
