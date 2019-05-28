import React from 'react'
import ReactDOM from 'react-dom'

export class StoryEditor extends React.Component {
  constructor(props) {
    super(props)
    
    this.link = this.link.bind(this)
    this.copy = this.copy.bind(this)
    this.changeColor = this.changeColor.bind(this)
    this.getImage = this.getImage.bind(this)
    this.printMe = this.printMe.bind(this)
  }

  // var btn = document.querySelector(".sai");
  // var getText = document.querySelector(".getText");
  // var content = document.querySelector(".getcontent");
  // var editorContent = document.querySelector(".editor");

  // btn.addEventListener("click", function() {
  //   var s = editorContent.innerHTML;
  //   content.style.display = "block";
  //   content.textContent = s;
  // });

  // getText.addEventListener("click", function() {
  //   const old = editorContent.textContent;
  //   content.style.display = "block";
  //   content.textContent = old;
  // });

  link() {
    const url = prompt("Enter the URL");
    document.execCommand("createLink", false, url);
  }

  copy() {
    document.execCommand("copy", false, "");
  }

  changeColor() {
    const color = prompt("Enter your color in hex ex:#f1f233");
    document.execCommand("foreColor", false, color);
  }


  getImage() {
    const file = document.querySelector("input[type=file]").files[0];
    const reader = new FileReader();
    let dataURI;

    reader.addEventListener(
      "load",
      function() {
        dataURI = reader.result;

        const img = document.createElement("img");
        img.src = dataURI;
        editorContent.appendChild(img);
      },
      false
    );

    if (file) {
      console.log("s");
      reader.readAsDataURL(file);
    }
  }

  printMe() {
    if (confirm("Check your Content before print")) {
      const body = document.body;
      let s = body.innerHTML;
      body.textContent = editorContent.innerHTML;

      document.execCommandShowHelp;
      body.style.whiteSpace = "pre";
      window.print();
      location.reload();
    }
  }

  render() {
    return (
      <div>
        <div className="toolbar">
          <button
            className="tool-items fa fa-bold" 
            onClick={ e => document.execCommand('bold', false, '') }>
          </button>
          <button
            className="tool-items fa fa-underline"
            onClick={ e => document.execCommand('underline', false, '') }>
          </button>
          <button
            className="tool-items fa fa-italic"
            onClick={ e => document.execCommand('italic', false, '') }>
          </button>
          <button
            className="tool-items fa fa-link"
            onClick={ e => this.link() }>
          </button>
          <button
            className="tool-items fa fa-scissors"
            onClick={ e => document.execCommand('cut',false,'' ) }>
          </button>
          <input
            className="tool-items fa fa-file-image-o"
            type="file"
            accept="image/*"
            id="file"
            style={ { display: "none" } }
            onChange={ e => this.getImage() } />
          <label
            htmlFor="file"
            className="tool-items fa fa-file-image-o">
          </label>
          
          
          <button
            className="tool-items fa fa-undo"
            onClick={ e => document.execCommand('undo',false,'' ) }>
          </button>
          <button
            className="tool-items fa fa-repeat"
            onClick={ e => document.execCommand('redo',false,'' ) }>
          </button>
          <button
            className="tool-items fa fa-tint"
            onClick={ e => this.changeColor() }>
          </button>
          <button
            className="tool-items fa fa-strikethrough"
            onClick={ e => document.execCommand('strikeThrough',false,'') }>
          </button>
          <button
            className="tool-items fa fa-trash"
            onClick={ e => document.execCommand('delete',false,'') }>
          </button>
          <button
            className="tool-items fa fa-scribd"
            onClick={ e => document.execCommand('selectAll',false,'') }>
          </button>
          <button
            className="tool-items fa fa-clone"
            onClick={ e => this.copy() } >
          </button>

          {/* Justify */}
      
          <button
            className="tool-items fa fa-align-center"
            onClick={ e => document.execCommand('justifyCenter',false,'') }>
          </button>
          <button
            className="tool-items fa fa-align-left"
            onClick={ e => document.execCommand('justifyLeft',false,'') }>
          </button>
          <button
            className="tool-items fa fa-align-right"
            onClick={ e => document.execCommand('justifyRight',false,'') }>
          </button>
        </div>

        <div className="center">
          <div
            className="editor"
            contentEditable
            suppressContentEditableWarning
            ref={ el => this.editorContent = el } >
              <h1>Simple Html editor</h1>
              <p>Good to start</p>
          </div>
        </div>

        <div className="center">
          <button
            className="sai btn">
              GetHtml
          </button>
          <button
            className="getText btn">
              GetText
          </button>
          <button
            className="btn print"
            onClick={ e => this.printMe() }>
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
