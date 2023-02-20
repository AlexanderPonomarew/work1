﻿           &НаКлиенте
Процедура СписокНоменклатурыКоличествоПриИзменении(Элемент)
	СтрокаТабличнойЧасти = Элементы.СписокНоменклатуры.ТекущиеДанные; 
	РаботаСДокументами.РассчитатьСумму(СтрокаТабличнойЧасти); 
КонецПроцедуры

&НаКлиенте
Процедура СписокНоменклатурыЦенаПриИзменении(Элемент)
СтрокаТабличнойЧасти = Элементы.СписокНоменклатуры.ТекущиеДанные; 
	РаботаСДокументами.РассчитатьСумму(СтрокаТабличнойЧасти);
КонецПроцедуры     

        &НаКлиенте
Процедура СписокНоменклатурыНаименованиеПриИзменении(Элемент)
СтрокаРасчета = Элементы.СписокНоменклатуры.ТекущиеДанные;
СтрокаРасчета.Цена = ПолучитьЦену(СтрокаРасчета.Наименование);
СписокНоменклатурыЦенаПриИзменении(Элемент);
КонецПроцедуры                 

        &НаСервере
		функция ПолучитьЦену (НаименованиеДокумента)
			СтруктураОтбора = Новый Структура;   
			СтруктураОтбора.Вставить("Наименование", НаименованиеДокумента);
			РезультатОтбора = РегистрыСведений.ЦеныПоставщика.Получить(СтруктураОтбора);
          Возврат РезультатОтбора.Цена;
		  КонецФункции

