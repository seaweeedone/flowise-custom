// ==========|| custom code ||==========
import config from '@/config'

export const gridSpacing = 3
export const drawerWidth = 260
export const appDrawerWidth = 320
export const headerHeight = 80
export const maxScroll = 100000
// ==========|| org code ||==========
// export const baseURL = import.meta.env.VITE_API_BASE_URL || window.location.origin
// export const uiBaseURL = import.meta.env.VITE_UI_BASE_URL || window.location.origin

// ==========|| custom code ||==========
export const basePrefix= config.basename
export const baseURL = (import.meta.env.VITE_API_BASE_URL || window.location.origin) + basePrefix
export const uiBaseURL = (import.meta.env.VITE_UI_BASE_URL || window.location.origin) + basePrefix

export const FLOWISE_CREDENTIAL_ID = 'FLOWISE_CREDENTIAL_ID'
export const REDACTED_CREDENTIAL_VALUE = '_FLOWISE_BLANK_07167752-1a71-43b1-bf8f-4f32252165db'
