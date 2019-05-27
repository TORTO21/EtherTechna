import React from 'react'
import { EditorState, convertToRaw } from 'draft-js'
import { Editor } from 'react-draft-wysiwyg';
import 'react-draft-wysiwyg/dist/react-draft-wysiwyg.css';

class StoryForm extends React.Component {
  constructor(props) {
    super(props)
    this.state = { 
      title: "",
      body: EditorState.createEmpty(),
      text: "",

    }
    this.update = this.update.bind(this)
    this.onEditorStateChange = this.onEditorStateChange.bind(this)
    this.handleSubmit = this.handleSubmit.bind(this)
  }

  handleSubmit(e) {
    e.preventDefault()
    const contentState = this.state.body.getCurrentContent()
    console.log(convertToRaw(contentState))
  }

  update(field) {
    return e => this.setState({ [field]: e.target.value })
  }

  onEditorStateChange(body) {
    this.setState({ body });
  };

  // modules = {
  //   toolbar: [
  //     [{ 'header': [1, 2, false] }],
  //     ['bold', 'italic', 'underline','strike', 'blockquote'],
  //     [{'list': 'ordered'}, {'list': 'bullet'}, {'indent': '-1'}, {'indent': '+1'}],
  //     ['link', 'image'],
  //     ['clean']
  //   ],
  // }
 
  // formats = [
  //   'header',
  //   'bold', 'italic', 'underline', 'strike', 'blockquote',
  //   'list', 'bullet', 'indent',
  //   'link', 'image'
  // ]

  render () {
    
    return (
      <div>
        <form onSubmit={ this.handleSubmit } >
          <label>
            <input
              type="text"
              onChange={ this.update('title') }
              placeholder="Title"
              className="story-form-title" />
          </label>
          {/* <ReactQuill
            value={ this.state.text }
            onChange={ this.update }
            theme="snow"
            modules={ this.modules }
            formats={ this.formats } 
            className="quill-form" /> */}
          <Editor
            editorState={ this.state.body }
            wrapperClassName="wrapper-class"
            editorClassName="editor-class"
            toolbarClassName="toolbar-class"
            onEditorStateChange={ this.onEditorStateChange }
            // wrapperStyle={<wrapperStyleObject />}
            // editorStyle={<editorStyleObject />}
            // toolbarStyle={<toolbarStyleObject />}
          />
          <input type="submit" value="Submit"/>
        </form>
        
      </div>
    )
  }
}

export default StoryForm