class StatBlock extends HTMLElement {
  static get observedAttributes() {
    return ['title', 'value'];
  }

  constructor() {
    super();
    this.attachShadow({ mode: 'open' });
    this.render();
  }

  attributeChangedCallback(name, oldValue, newValue) {
    this.render(); // Re-render whenever an attribute changes
  }

  render() {
    const title = this.getAttribute('title') || '';
    const value = this.getAttribute('value') || '';
    this.shadowRoot.innerHTML = `
      <style>
        :host {
          display: flex;
          flex-direction: column;
          background-color: rgba(255, 255, 255, 0.05);
          padding: 2rem;
          border-radius: 0.5rem;
          text-align: center;
          color: white;
        }
        dt {
          font-size: 0.875rem;
          font-weight: 300;
          color: #d1d5db;
        }
        dd {
          font-size: 1.875rem;
          font-weight: 600;
          margin: 0;
        }
      </style>
      <dt>${title}</dt>
      <dd>${value}</dd>
    `;
  }
}

customElements.define('stat-block', StatBlock);