        &НаКлиенте
Процедура ПередЗаписью(Отказ, ПараметрыЗаписи)
	Объект.СуммаПоДокументу=Объект.ВыполненныеРаботы.Итог("Сумма")+Объект.Номенклатура.Итог("Сумма");
КонецПроцедуры

&НаКлиенте
Процедура ВыполненныеРаботыКоличествоПриИзменении(Элемент)
	СтрокаТабличнойЧасти = Элементы.ВыполненныеРаботы.ТекущиеДанные; 
	РаботаСДокументами.РассчитатьСумму(СтрокаТабличнойЧасти); 
КонецПроцедуры
&НаКлиенте
Процедура ВыполненныеРаботыЦенаПриИзменении(Элемент)
	СтрокаТабличнойЧасти = Элементы.ВыполненныеРаботы.ТекущиеДанные; 
	РаботаСДокументами.РассчитатьСумму(СтрокаТабличнойЧасти); 
КонецПроцедуры

 &НаКлиенте
Процедура НоменклатураКоличествоПриИзменении(Элемент)
	СтрокаТабличнойЧасти = Элементы.Номенклатура.ТекущиеДанные; 
	РаботаСДокументами.РассчитатьСумму(СтрокаТабличнойЧасти); 
КонецПроцедуры
&НаКлиенте
Процедура НоменклатураЦенаПриИзменении(Элемент)
	СтрокаТабличнойЧасти = Элементы.Номенклатура.ТекущиеДанные; 
	РаботаСДокументами.РассчитатьСумму(СтрокаТабличнойЧасти); 
КонецПроцедуры

     &НаКлиенте
Процедура ВыполненныеРаботыНаименованиеПриИзменении(Элемент)
СтрокаРасчета = Элементы.ВыполненныеРаботы.ТекущиеДанные;
СтрокаРасчета.Цена = ПолучитьЦену(СтрокаРасчета.Наименование);
ВыполненныеРаботыЦенаПриИзменении(Элемент);
КонецПроцедуры                 

        &НаСервере
		функция ПолучитьЦену (НаименованиеДокумента)
			СтруктураОтбора = Новый Структура;   
			СтруктураОтбора.Вставить("Наименование", НаименованиеДокумента);
			РезультатОтбора = РегистрыСведений.Цены.Получить(СтруктураОтбора);
          Возврат РезультатОтбора.Цена;
		  КонецФункции
                            &НаКлиенте
Процедура НоменклатураНаименованиеПриИзменении(Элемент)
СтрокаРасчета = Элементы.Номенклатура.ТекущиеДанные;
СтрокаРасчета.Цена = ПолучитьЦену1(СтрокаРасчета.Наименование);
НоменклатураЦенаПриИзменении(Элемент);
КонецПроцедуры                 

                  &НаСервере
		функция ПолучитьЦену1 (НаименованиеДокумента)
			СтруктураОтбора = Новый Структура;   
			СтруктураОтбора.Вставить("Наименование", НаименованиеДокумента);
			РезультатОтбора = РегистрыСведений.Цены.Получить(СтруктураОтбора);
          Возврат РезультатОтбора.Цена;
		  КонецФункции
