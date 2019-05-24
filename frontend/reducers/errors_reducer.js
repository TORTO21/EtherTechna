import { combineReducers } from 'redux'

import sessionErrorsReducer from './errors/session_errors_reducer'
import storiesErrorsReducer from './errors/stories_errors_reducer'

const errorsReducer = combineReducers({
  session: sessionErrorsReducer,
  stories: storiesErrorsReducer,
})

export default errorsReducer