import React from 'react'

export class StoryEditor extends React.Component {
  constructor(props) {
    super(props)
    this.link = this.link.bind(this)
    this.copy = this.copy.bind(this)
    this.changeColor = this.changeColor.bind(this)
    this.getImage = this.getImage.bind(this)
    this.printMe = this.printMe.bind(this)
  }

  componentDidMount() {
    this.btn = document.querySelector(".getHtml")
    this.getText = document.querySelector(".getText")
    this.content = document.querySelector(".textarea")
    this.editorContent = document.querySelector(".editor")
    this.text = this.editorContent.innerHTML

    this.btn.addEventListener(
      "click",
      () => {
        var s = this.editorContent.innerHTML
        this.content.style.display = "block"
        this.content.textContent = s
        console.log(this.editorContent.innerHTML)
      }
    )
    
    this.getText.addEventListener(
      "click",
      () => {
        const old = this.editorContent.textContent
        this.content.style.display = "block"
        this.content.textContent = old
      }
    )

    this.editorContent.addEventListener(
      "keyup",
      () => {
        // console.log(this.editorContent.innerHTML)
        this.props.updateBody(this.editorContent.innerHTML)
      }
    )
  }

  link() {
    const url = prompt("Enter the URL")
    document.execCommand("createLink", false, url)
  }

  copy() {
    document.execCommand("copy", false, "")
  }

  changeColor() {
    const color = prompt("Enter your color in hex ex:#f1f233")
    document.execCommand("foreColor", false, color)
  }

  getImage() {
    const file = document.querySelector("input[type=file]").files[0]
    const reader = new FileReader()
    let dataURI

    reader.addEventListener(
      "load",
      () => {
        dataURI = reader.result
        const img = document.createElement("img")
        img.src = dataURI
        this.editorContent.appendChild(img)
      },
      false
    )

    if (file) {
      console.log("s")
      reader.readAsDataURL(file)
    }
  }

  printMe() {
    if (confirm("Check your Content before print")) {
      const body = document.body
      let s = body.innerHTML
      body.textContent = this.editorContent.innerHTML

      document.execCommandShowHelp
      body.style.whiteSpace = "pre"
      window.print()
      location.reload()
    }
  }

  render() {
    return (
      <div>
        <div className="toolbar">
          <button
            className="tool-items fa fa-header" 
            onClick={ () => document.execCommand('formatBlock', true, '') } >
          </button>
          <button
            className="tool-items fa fa-bold" 
            onClick={ () => document.execCommand('bold', false, '') } >
          </button>
          <button
            className="tool-items fa fa-underline"
            onClick={ () => document.execCommand('underline', false, '') } >
          </button>
          <button
            className="tool-items fa fa-italic"
            onClick={ () => document.execCommand('italic', false, '') } >
          </button>
          <button
            className="tool-items fa fa-link"
            onClick={ () => this.link() } >
          </button>
          <button
            className="tool-items fa fa-scissors"
            onClick={ () => document.execCommand('cut',false,'' ) } >
          </button>
          <input
            className="tool-items fa fa-file-image-o"
            type="file"
            accept="image/*"
            id="file"
            style={ { display: "none" } }
            onChange={ () => this.getImage() } />
          <label
            htmlFor="file"
            className="tool-items fa fa-file-image-o">
          </label>
          

          <button
            className="tool-items fa fa-undo"
            onClick={ () => document.execCommand('undo',false,'' ) } >
          </button>
          <button
            className="tool-items fa fa-repeat"
            onClick={ () => document.execCommand('redo',false,'' ) } >
          </button>
          <button
            className="tool-items fa fa-tint"
            onClick={ () => this.changeColor() } >
          </button>
          <button
            className="tool-items fa fa-strikethrough"
            onClick={ () => document.execCommand('strikeThrough',false,'') } >
          </button>
          <button
            className="tool-items fa fa-trash"
            onClick={ () => document.execCommand('delete',false,'') } >
          </button>
          <button
            className="tool-items fa fa-scribd"
            onClick={ () => document.execCommand('selectAll',false,'') } >
          </button>
          <button
            className="tool-items fa fa-clone"
            onClick={ () => this.copy() } >
          </button>

          {/* Justify */}
      
          <button
            className="tool-items fa fa-align-center"
            onClick={ () => document.execCommand('justifyCenter',false,'') } >
          </button>
          <button
            className="tool-items fa fa-align-left"
            onClick={ () => document.execCommand('justifyLeft',false,'') } >
          </button>
          <button
            className="tool-items fa fa-align-right"
            onClick={ () => document.execCommand('justifyRight',false,'') } >
          </button>
        </div>

        <div className="center">
          <div
            className="editor"
            contentEditable
            suppressContentEditableWarning
            // ref={ el => this.editorContent = el }
            // onChange={ () => this.setContent() }
            >
              <h1>Simple Html editor</h1>
              <p>Good to start</p>
          </div>
        </div>

        <div className="center">
          <button className="getHtml btn">GetHtml</button>
          <button className="getText btn">GetText</button>
          <button
            className="btn print"
            onClick={ () => this.printMe() } >
              PrintHtml
          </button>
        </div>

        <div className="center">
          <section className="textarea"></section>
        </div>

      </div>
    )
  }
}

export default StoryEditor
