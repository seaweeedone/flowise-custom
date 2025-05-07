// ==========|| set subpath ||==========
const flowiseBase = (import.meta.env.VITE_BASE_URL ?? '').replace(/\/+$/, '')

const config = {
  // basename: only at build time to set, and Don't add '/' at end off BASENAME for breadcrumbs, also Don't put only '/' use blank('') instead,

  // ==========|| org code ||==========
  // basename: flowiseBase,  
  
  // ==========|| custom code ||========== 
  basename: flowiseBase,   
  defaultPath: '/chatflows',
  fontFamily: `'Roboto', sans-serif`,
  borderRadius: 12
}

export default config
