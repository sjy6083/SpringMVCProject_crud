window.onload=function(){

    const pw_show_hide = document.querySelector('.pw_show_hide')
    const input_id = document.querySelector('input[type=text]')
    const input_pw = document.querySelector('input[type=password]')
    const id_error = document.querySelector('.id_error')
    const pw_error = document.querySelector('.pw_error')
    console.log(pw_show_hide, input_id, input_pw, id_error, pw_error)

    input_id.addEventListener('click', function(){
        id_error.style.display = 'block'
    })
    input_pw.addEventListener('click', function(){
        pw_error.style.display = 'block'
    })

    let i = true
    pw_show_hide.addEventListener('click', function(){
        var pw=document.getElementById("pw")
        var status=pw.getAttribute('type')
        
        if(i==true , status==='password'){
			pw.setAttribute('type','text')
            pw_show_hide.style.backgroundPosition = '-126px 0'
            i=false
        } else if(status==='text'){
			pw.setAttribute('type','password')
            pw_show_hide.style.backgroundPosition = '-105px 0'
            i=true
        }
    })

} //onload end
