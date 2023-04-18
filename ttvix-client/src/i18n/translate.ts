import { labels as labelsEN } from './en'
import { labels as labelsPT } from './pt'
import { language } from '../stores/language'

export function getLabels(): any {
    let lang = 'en'
    language.subscribe((newLang) => {
        lang = newLang
    })
    if (lang === 'en') {
        return labelsEN
    } else if (lang === 'pt') {
        return labelsPT
    } else {
        return null
    }
}

export function translate(key: string) {
    const labels = getLabels()
    if (!labels || !key) return ''

    const keys = key.split?.('.') || []

    let currentObj = labels
    keys.forEach(thisKey => {
        if (!currentObj || !currentObj[thisKey]) return
        currentObj = currentObj[thisKey]
    })

    if (typeof currentObj !== 'string') return ''

    return currentObj
}