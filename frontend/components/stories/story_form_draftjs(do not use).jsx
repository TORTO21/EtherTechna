import React from 'react'
import { EditorState, convertToRaw, convertFromRaw } from 'draft-js'
import { Editor } from 'react-draft-wysiwyg';
import 'react-draft-wysiwyg/dist/react-draft-wysiwyg.css';

class StoryForm extends React.Component {
  constructor(props) {
    super(props)
    this.state = { 
      title: "",
      lead_in: "",
      category: "",
      body: "",
      editorState: EditorState.createEmpty()
    }
    this.update = this.update.bind(this)
    this.onEditorStateChange = this.onEditorStateChange.bind(this)
    this.handleSubmit = this.handleSubmit.bind(this)
  }

  componentDidMount() {
    const { title, lead_in, category, body } = this.props.story
    this.setState({
      title,
      lead_in,
      category,
      body,
      editorState: convertBodyToEditorState(body)
    })
  }

  convertBodyToEditorState(jsonString) {
    if (jsonString) {
      const contentState = convertFromRaw(JSON.parse(jsonString))
      return EditorState.createWithContent(contentState)
    } else {
      return EditorState.createEmpty()
    }
  }

  handleSubmit(e) {
    e.preventDefault()
    this.props.submitAction(this.state)
  }

  update(field) {
    return e => this.setState({ [field]: e.target.value })
  }

  onEditorStateChange(editorState) {
    const contentState = editorState.getCurrentContent()
    this.setState({
      editorState,
      body: JSON.stringify(convertToRaw(contentState))
    });
  };

  render () {
    // debugger
    return (
      <div>
        <form onSubmit={ this.handleSubmit } >
          <label>
            <input
              type="text"
              placeholder="Title"
              className="story-form-title"
              onChange={ this.update('title') }
            />
          </label>
          <label>
            <input
              type="text"
              placeholder="Lead In"
              className="story-form-lead-in"
              onChange={ this.update('lead-in') }
            />
          </label>
          <label>
            <input
              type="text"
              placeholder="Category"
              className="story-form-category"
              onChange={ this.update('category') }
            />
          </label>
          <Editor
            editorState={ this.state.editorState }
            wrapperClassName="wrapper-class"
            editorClassName="editor-class"
            toolbarClassName="toolbar-class"
            onEditorStateChange={ this.onEditorStateChange }
            // wrapperStyle={<wrapperStyleObject />}
            // editorStyle={<editorStyleObject />}
            // toolbarStyle={<toolbarStyleObject />}
          />
          <div className="link-green" onClick={ this.updateBody }>Update Editor</div>
          <input type="submit" value="Submit"/>
        </form>
        
      </div>
    )
  }
}

export default StoryForm

