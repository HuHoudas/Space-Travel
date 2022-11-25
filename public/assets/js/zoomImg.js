const teste1 = document.getElementById('test')
const teste2 = document.getElementById('test1')
const teste3 = document.getElementById('test2')
const teste4 = document.getElementById('test3')
const teste5 = document.getElementById('test4')
const para = document.createElement('h2')
const image = document.body

teste1.addEventListener('mouseover', (event) => {
    event.target.style.setProperty('transform', 'scale(5) translate(100px, 60px)')
    teste2.style.setProperty("display", "none")
    teste3.style.setProperty("display", "none")
    teste4.style.setProperty("display", "none")
    teste5.style.setProperty("display", "none")
    para.style.setProperty('display', 'block')
    para.style.color = "white"
    para.textContent = 'Mars'
    para.style.setProperty("font-size", "4rem")
    para.style.setProperty("transform", 'translate(500px, -300px)')
    teste1.appendChild(para)
})
teste2.addEventListener('mouseover', (event) => {
    event.target.style.setProperty('transform', 'scale(5) translate(-120px, 80px)')
    teste1.style.setProperty("display", "none")
    teste3.style.setProperty("display", "none")
    teste4.style.setProperty("display", "none")
    teste5.style.setProperty("display", "none")
    para.style.setProperty('display', 'block')
    para.style.color = "white"
    para.textContent = 'Jupiter'
    para.style.setProperty("font-size", "4rem")
    para.style.setProperty("transform", 'translate(-600px, -300px)')
    teste2.appendChild(para)
})
teste3.addEventListener('mouseover', (event) => {
    event.target.style.setProperty('transform', 'scale(5) translate(130px, 20px)')
    teste1.style.setProperty("display", "none")
    teste2.style.setProperty("display", "none")
    teste4.style.setProperty("display", "none")
    teste5.style.setProperty("display", "none")
    para.style.setProperty('display', 'block')
    para.style.color = "white"
    para.textContent = 'Vénus'
    para.style.setProperty("font-size", "4rem")
    para.style.setProperty("transform", 'translate(600px, -700px)')
    teste3.appendChild(para)
})
teste4.addEventListener('mouseover', (event) => {
    event.target.style.setProperty('transform', 'scale(5) translate(20px, -20px)')
    teste1.style.setProperty("display", "none")
    teste2.style.setProperty("display", "none")
    teste3.style.setProperty("display", "none")
    teste5.style.setProperty("display", "none")
    para.style.setProperty('display', 'block')
    para.style.color = "white"
    para.textContent = 'Terre'
    para.style.setProperty("font-size", "4rem")
    para.style.setProperty("transform", 'translate(180px, -800px)')
    teste4.appendChild(para)
})
teste5.addEventListener('mouseover', (event) => {
    event.target.style.setProperty('transform', 'scale(5) translate(-130px, 20px)')
    teste1.style.setProperty("display", "none")
    teste2.style.setProperty("display", "none")
    teste3.style.setProperty("display", "none")
    teste4.style.setProperty("display", "none")
    para.style.setProperty('display', 'block')
    para.style.color = "white"
    para.textContent = 'Pandora'
    para.style.setProperty("font-size", "4rem")
    para.style.setProperty("transform", 'translate(-700px, -650px)')
    teste5.appendChild(para)
})

teste1.addEventListener("mouseout", (event)=> {
    event.target.style.setProperty("transform", 'scale(1) translate(0px)')
    teste4.style.setProperty("display", "block")
    teste2.style.setProperty("display", "block")
    teste3.style.setProperty("display", "block")
    teste5.style.setProperty("display", "block")
    para.style.setProperty('display', 'none')
})
teste2.addEventListener("mouseout", (event)=> {
    event.target.style.setProperty("transform", 'scale(1) translate(0px)')
    teste4.style.setProperty("display", "block")
    teste1.style.setProperty("display", "block")
    teste3.style.setProperty("display", "block")
    teste5.style.setProperty("display", "block")
    para.style.setProperty('display', 'none')
})
teste3.addEventListener("mouseout", (event)=> {
    event.target.style.setProperty("transform", 'scale(1) translate(0px)')
    teste4.style.setProperty("display", "block")
    teste1.style.setProperty("display", "block")
    teste2.style.setProperty("display", "block")
    teste5.style.setProperty("display", "block")
    para.style.setProperty('display', 'none')
})
teste4.addEventListener("mouseout", (event)=> {
    event.target.style.setProperty("transform", 'scale(1) translate(0px)')
    teste1.style.setProperty("display", "block")
    teste2.style.setProperty("display", "block")
    teste3.style.setProperty("display", "block")
    teste5.style.setProperty("display", "block")
    para.style.setProperty('display', 'none')
})
teste5.addEventListener("mouseout", (event)=> {
    event.target.style.setProperty("transform", 'scale(1) translate(0px)')
    teste1.style.setProperty("display", "block")
    teste2.style.setProperty("display", "block")
    teste3.style.setProperty("display", "block")
    teste4.style.setProperty("display", "block")
    para.style.setProperty('display', 'none')
})
