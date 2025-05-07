import { useRoutes } from 'react-router-dom'

// routes
import MainRoutes from './MainRoutes'
import CanvasRoutes from './CanvasRoutes'
import ChatbotRoutes from './ChatbotRoutes'
import config from '@/config'

// ==============================|| ROUTING RENDER ||============================== //

// ==========|| org code ||==========
// export default function ThemeRoutes() {
//     return useRoutes([MainRoutes, CanvasRoutes, ChatbotRoutes], config.basename)
// }

// ==========|| custom code ||==========
export default function ThemeRoutes() {
      // BrowserRouter에서 받은 basename을 기준으로 routes 배열만 넘겨주면 내부 매칭
      return useRoutes([MainRoutes, CanvasRoutes, ChatbotRoutes])
    }