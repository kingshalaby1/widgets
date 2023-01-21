const updateUIWithRating = function (document, rating) {
  document.querySelectorAll('[data-rating-present]').forEach(element => {
    element.classList.add('db')
    element.classList.remove('dn')
  })
  document.querySelectorAll('[data-no-rating-present]').forEach(element => {
    element.classList.add('dn')
  })
  document.querySelectorAll('[data-rating-label]').forEach(element => {
    element.innerText = `${rating}`
  })
}

const start = function (window) {
  // console.log(document.querySelectorAll("input[type='submit'][data-rating]"))
  const document = window.document
  window.addEventListener('DOMContentLoaded', () => {
    // console.log(document.querySelectorAll("input[type='submit'][data-rating]"))

    document.querySelectorAll("button[type='submit'][data-rating='true']").forEach(element => {
      element.onclick = event => {
        const rating = element.innerText
        event.preventDefault()
        updateUIWithRating(document, rating)
      }
    })
  })
}

export { start }
