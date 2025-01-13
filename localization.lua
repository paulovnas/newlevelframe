local addonName, addonTable = ...

local L = LibStub("AceLocale-3.0"):NewLocale(addonName, "enUS", true)
if L then
    L["YOU_REACHED"] = "You have reached"
    L["LEVEL_NUM"] = "Level %d"
    L["CONFIG_TITLE"] = "NewLevelFrame"
    L["CONFIG_DESC"] = "Adjust the font sizes and display times of the frame."
    L["FONTS_GROUP"] = "Fonts"
    L["TITLE_FONT_SIZE"] = "Title Font Size"
    L["TITLE_FONT_DESC"] = "Adjusts the font size of the 'You have reached' text"
    L["SUBTITLE_FONT_SIZE"] = "Level Font Size"
    L["SUBTITLE_FONT_DESC"] = "Adjusts the font size of the 'Level X' text"
    L["TIMING_GROUP"] = "Timing"
    L["DISPLAY_TIME"] = "Display Time"
    L["DISPLAY_TIME_DESC"] = "Time in seconds the frame will be fully visible"
    L["FADE_IN_TIME"] = "Fade In Time"
    L["FADE_IN_DESC"] = "Time in seconds for the frame to fade in"
    L["FADE_OUT_TIME"] = "Fade Out Time"
    L["FADE_OUT_DESC"] = "Time in seconds for the frame to fade out"
end

L = LibStub("AceLocale-3.0"):NewLocale(addonName, "ptBR")
if L then
    L["YOU_REACHED"] = "Você alcançou"
    L["LEVEL_NUM"] = "Nível %d"
    L["CONFIG_TITLE"] = "NewLevelFrame"
    L["CONFIG_DESC"] = "Ajuste o tamanho das fontes e os tempos de exibição do frame."
    L["FONTS_GROUP"] = "Fontes"
    L["TITLE_FONT_SIZE"] = "Tamanho da Fonte do Título"
    L["TITLE_FONT_DESC"] = "Ajusta o tamanho da fonte do texto 'Você alcançou'"
    L["SUBTITLE_FONT_SIZE"] = "Tamanho da Fonte do Nível"
    L["SUBTITLE_FONT_DESC"] = "Ajusta o tamanho da fonte do texto 'Nível X'"
    L["TIMING_GROUP"] = "Tempos"
    L["DISPLAY_TIME"] = "Tempo de Exibição"
    L["DISPLAY_TIME_DESC"] = "Tempo em segundos que o frame ficará totalmente visível"
    L["FADE_IN_TIME"] = "Tempo de Fade In"
    L["FADE_IN_DESC"] = "Tempo em segundos para o frame aparecer gradualmente"
    L["FADE_OUT_TIME"] = "Tempo de Fade Out"
    L["FADE_OUT_DESC"] = "Tempo em segundos para o frame desaparecer gradualmente"
end

L = LibStub("AceLocale-3.0"):NewLocale(addonName, "deDE")
if L then
    L["YOU_REACHED"] = "Du hast erreicht"
    L["LEVEL_NUM"] = "Stufe %d"
    L["CONFIG_TITLE"] = "NewLevelFrame"
    L["CONFIG_DESC"] = "Passen Sie die Schriftgrößen und Anzeigezeiten des Rahmens an."
    L["FONTS_GROUP"] = "Schriftarten"
    L["TITLE_FONT_SIZE"] = "Titelschriftgröße"
    L["TITLE_FONT_DESC"] = "Passt die Schriftgröße des Textes 'Du hast erreicht' an"
    L["SUBTITLE_FONT_SIZE"] = "Stufenschriftgröße"
    L["SUBTITLE_FONT_DESC"] = "Passt die Schriftgröße des Textes 'Stufe X' an"
    L["TIMING_GROUP"] = "Timing"
    L["DISPLAY_TIME"] = "Anzeigezeit"
    L["DISPLAY_TIME_DESC"] = "Zeit in Sekunden, die der Rahmen vollständig sichtbar ist"
    L["FADE_IN_TIME"] = "Einblendezeit"
    L["FADE_IN_DESC"] = "Zeit in Sekunden für das Einblenden des Rahmens"
    L["FADE_OUT_TIME"] = "Ausblendezeit"
    L["FADE_OUT_DESC"] = "Zeit in Sekunden für das Ausblenden des Rahmens"
end

L = LibStub("AceLocale-3.0"):NewLocale(addonName, "esES") or LibStub("AceLocale-3.0"):NewLocale(addonName, "esMX")
if L then
    L["YOU_REACHED"] = "Has alcanzado"
    L["LEVEL_NUM"] = "Nivel %d"
    L["CONFIG_TITLE"] = "NewLevelFrame"
    L["CONFIG_DESC"] = "Ajusta los tamaños de fuente y tiempos de visualización del marco."
    L["FONTS_GROUP"] = "Fuentes"
    L["TITLE_FONT_SIZE"] = "Tamaño de Fuente del Título"
    L["TITLE_FONT_DESC"] = "Ajusta el tamaño de la fuente del texto 'Has alcanzado'"
    L["SUBTITLE_FONT_SIZE"] = "Tamaño de Fuente del Nivel"
    L["SUBTITLE_FONT_DESC"] = "Ajusta el tamaño de la fuente del texto 'Nivel X'"
    L["TIMING_GROUP"] = "Tiempos"
    L["DISPLAY_TIME"] = "Tiempo de Visualización"
    L["DISPLAY_TIME_DESC"] = "Tiempo en segundos que el marco estará completamente visible"
    L["FADE_IN_TIME"] = "Tiempo de Aparición"
    L["FADE_IN_DESC"] = "Tiempo en segundos para que el marco aparezca gradualmente"
    L["FADE_OUT_TIME"] = "Tiempo de Desaparición"
    L["FADE_OUT_DESC"] = "Tiempo en segundos para que el marco desaparezca gradualmente"
end

L = LibStub("AceLocale-3.0"):NewLocale(addonName, "frFR")
if L then
    L["YOU_REACHED"] = "Vous avez atteint"
    L["LEVEL_NUM"] = "Niveau %d"
    L["CONFIG_TITLE"] = "NewLevelFrame"
    L["CONFIG_DESC"] = "Ajustez les tailles de police et les temps d'affichage du cadre."
    L["FONTS_GROUP"] = "Polices"
    L["TITLE_FONT_SIZE"] = "Taille de Police du Titre"
    L["TITLE_FONT_DESC"] = "Ajuste la taille de la police du texte 'Vous avez atteint'"
    L["SUBTITLE_FONT_SIZE"] = "Taille de Police du Niveau"
    L["SUBTITLE_FONT_DESC"] = "Ajuste la taille de la police du texte 'Niveau X'"
    L["TIMING_GROUP"] = "Temporisation"
    L["DISPLAY_TIME"] = "Temps d'Affichage"
    L["DISPLAY_TIME_DESC"] = "Temps en secondes pendant lequel le cadre sera entièrement visible"
    L["FADE_IN_TIME"] = "Temps d'Apparition"
    L["FADE_IN_DESC"] = "Temps en secondes pour que le cadre apparaisse progressivement"
    L["FADE_OUT_TIME"] = "Temps de Disparition"
    L["FADE_OUT_DESC"] = "Temps en secondes pour que le cadre disparaisse progressivement"
end

L = LibStub("AceLocale-3.0"):NewLocale(addonName, "koKR")
if L then
    L["YOU_REACHED"] = "달성"
    L["LEVEL_NUM"] = "레벨 %d"
    L["CONFIG_TITLE"] = "NewLevelFrame"
    L["CONFIG_DESC"] = "프레임의 글꼴 크기와 표시 시간을 조정합니다."
    L["FONTS_GROUP"] = "글꼴"
    L["TITLE_FONT_SIZE"] = "제목 글꼴 크기"
    L["TITLE_FONT_DESC"] = "'달성' 텍스트의 글꼴 크기를 조정합니다"
    L["SUBTITLE_FONT_SIZE"] = "레벨 글꼴 크기"
    L["SUBTITLE_FONT_DESC"] = "'레벨 X' 텍스트의 글꼴 크기를 조정합니다"
    L["TIMING_GROUP"] = "시간"
    L["DISPLAY_TIME"] = "표시 시간"
    L["DISPLAY_TIME_DESC"] = "프레임이 완전히 표시될 시간(초)"
    L["FADE_IN_TIME"] = "페이드 인 시간"
    L["FADE_IN_DESC"] = "프레임이 점진적으로 나타나는 시간(초)"
    L["FADE_OUT_TIME"] = "페이드 아웃 시간"
    L["FADE_OUT_DESC"] = "프레임이 점진적으로 사라지는 시간(초)"
end

L = LibStub("AceLocale-3.0"):NewLocale(addonName, "zhCN")
if L then
    L["YOU_REACHED"] = "你已达到"
    L["LEVEL_NUM"] = "等级 %d"
    L["CONFIG_TITLE"] = "NewLevelFrame"
    L["CONFIG_DESC"] = "调整框架的字体大小和显示时间。"
    L["FONTS_GROUP"] = "字体"
    L["TITLE_FONT_SIZE"] = "标题字体大小"
    L["TITLE_FONT_DESC"] = "调整'你已达到'文本的字体大小"
    L["SUBTITLE_FONT_SIZE"] = "等级字体大小"
    L["SUBTITLE_FONT_DESC"] = "调整'等级 X'文本的字体大小"
    L["TIMING_GROUP"] = "时间"
    L["DISPLAY_TIME"] = "显示时间"
    L["DISPLAY_TIME_DESC"] = "框架完全可见的时间（秒）"
    L["FADE_IN_TIME"] = "淡入时间"
    L["FADE_IN_DESC"] = "框架逐渐出现的时间（秒）"
    L["FADE_OUT_TIME"] = "淡出时间"
    L["FADE_OUT_DESC"] = "框架逐渐消失的时间（秒）"
end

L = LibStub("AceLocale-3.0"):NewLocale(addonName, "zhTW")
if L then
    L["YOU_REACHED"] = "你已達到"
    L["LEVEL_NUM"] = "等級 %d"
    L["CONFIG_TITLE"] = "NewLevelFrame"
    L["CONFIG_DESC"] = "調整框架的字體大小和顯示時間。"
    L["FONTS_GROUP"] = "字體"
    L["TITLE_FONT_SIZE"] = "標題字體大小"
    L["TITLE_FONT_DESC"] = "調整'你已達到'文本的字體大小"
    L["SUBTITLE_FONT_SIZE"] = "等級字體大小"
    L["SUBTITLE_FONT_DESC"] = "調整'等級 X'文本的字體大小"
    L["TIMING_GROUP"] = "時間"
    L["DISPLAY_TIME"] = "顯示時間"
    L["DISPLAY_TIME_DESC"] = "框架完全可見的時間（秒）"
    L["FADE_IN_TIME"] = "淡入時間"
    L["FADE_IN_DESC"] = "框架逐漸出現的時間（秒）"
    L["FADE_OUT_TIME"] = "淡出時間"
    L["FADE_OUT_DESC"] = "框架逐漸消失的時間（秒）"
end

L = LibStub("AceLocale-3.0"):NewLocale(addonName, "ruRU")
if L then
    L["YOU_REACHED"] = "Вы достигли"
    L["LEVEL_NUM"] = "Уровень %d"
    L["CONFIG_TITLE"] = "NewLevelFrame"
    L["CONFIG_DESC"] = "Настройте размеры шрифта и время отображения рамки."
    L["FONTS_GROUP"] = "Шрифты"
    L["TITLE_FONT_SIZE"] = "Размер шрифта заголовка"
    L["TITLE_FONT_DESC"] = "Настраивает размер шрифта текста 'Вы достигли'"
    L["SUBTITLE_FONT_SIZE"] = "Размер шрифта уровня"
    L["SUBTITLE_FONT_DESC"] = "Настраивает размер шрифта текста 'Уровень X'"
    L["TIMING_GROUP"] = "Время"
    L["DISPLAY_TIME"] = "Время отображения"
    L["DISPLAY_TIME_DESC"] = "Время в секундах, в течение которого рамка будет полностью видна"
    L["FADE_IN_TIME"] = "Время появления"
    L["FADE_IN_DESC"] = "Время в секундах для постепенного появления рамки"
    L["FADE_OUT_TIME"] = "Время исчезновения"
    L["FADE_OUT_DESC"] = "Время в секундах для постепенного исчезновения рамки"
end

L = LibStub("AceLocale-3.0"):NewLocale(addonName, "enCN")
if L then
    L["YOU_REACHED"] = "你已经达到"
    L["LEVEL_NUM"] = "等级 %d"
    L["CONFIG_TITLE"] = "NewLevelFrame"
    L["CONFIG_DESC"] = "调整框架的字体大小和显示时间。"
    L["FONTS_GROUP"] = "字体"
    L["TITLE_FONT_SIZE"] = "标题字体大小"
    L["TITLE_FONT_DESC"] = "调整'你已经达到'文本的字体大小"
    L["SUBTITLE_FONT_SIZE"] = "等级字体大小"
    L["SUBTITLE_FONT_DESC"] = "调整'等级 X'文本的字体大小"
    L["TIMING_GROUP"] = "时间"
    L["DISPLAY_TIME"] = "显示时间"
    L["DISPLAY_TIME_DESC"] = "框架完全可见的时间（秒）"
    L["FADE_IN_TIME"] = "淡入时间"
    L["FADE_IN_DESC"] = "框架逐渐出现的时间（秒）"
    L["FADE_OUT_TIME"] = "淡出时间"
    L["FADE_OUT_DESC"] = "框架逐渐消失的时间（秒）"
end