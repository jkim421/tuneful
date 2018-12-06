export const debounce = (cb, waitTime, immediate) => {
  let timeout;

  return function executedFunc() {
    const context = this;
    const args = arguments;
    const later = function() {
      timeout = null;
      if (!immediate) cb.apply(context, args);
    };

    const callNow = immediate && !timeout;

    clearTimeout(timeout);

    timeout = setTimeout(later, waitTime);

    if (callNow) cb.apply(context, args);
  };
};
