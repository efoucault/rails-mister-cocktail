import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["Proposez vos créations"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
