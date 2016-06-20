" Language: Axon (via Trio files)
" Latest Revision: 2016-06-20 

if exists('b:current_syntax') 
  finish
endif

syn keyword axonKeywords and do else end  
syn keyword axonKeywords if not null or return

syn keyword axonExceptions try catch throw

syn keyword axonBooleans true false

"numbers sourced from fan.vim file provided with fantom
syn match  axonNumber '\<\(0[0-7]*\|0[xX]\x\+\|\d\+\)[lL]\=\>'
syn match  axonNumber '\(\<\d\+\.\d*\|\.\d\+\)\([eE][-+]\=\d\+\)\=[fFdD]\='
syn match  axonNumber '\<\d\+[eE][-+]\=\d\+[fFdD]\=\>'
syn match  axonNumber '\<\d\+\([eE][-+]\=\d\+\)\=[fFdD]\>'

syn match axonOperators '\*'
syn match axonOperators '/'
syn match axonOperators '-'
syn match axonOperators '+'
syn match axonOperators '='
syn match axonOperators '>'
syn match axonOperators '<'

syn keyword axonTodos contained TODO

syn match axonCommentSingle '[ \t]*\/\/.*' contains=axonTodos
"syn region axonCommentMulti start='/\*' end='\*/' 
"NOTE trio files do not support multi-line comments (SkyFoundry forum topic #714)!
"It is valid axon and could be enabled for other purpose
					
syn match axonBraces '[{}()\[\]]'

syn region axonString start='"' skip='\\.' end='"'
syn region axonUri start='`' end='`'

syn keyword axonCoreFuncs abs add addAll addCol addColMeta addMeta addRow addRows all any as avg capitalize chart checkSyntax col
syn keyword axonCoreFuncs colsToLocale commit concat context coord coordDist coordLat coordLng count curFunc date
"syx keyword axonCoreFuncs contains
"Removed since contains is a keyword for vim syntax files
syn keyword axonCoreFuncs dateTime day debugType decapitalize diff dst each eachDay eachMonth eachWhile echo endsWith eval
"syn keyword axonCoreFuncs end
"removed end as it's also in axonKeywords
syn keyword axonCoreFuncs exts fandoc filterToFunc find findAll first fold foldCol foldCols foldEnd foldStart folioCompact
syn keyword axonCoreFuncs folioEmptyTrash folioRestore folioSetMode folioSnapshot folioSnapshotDelete folioSnapshots format
syn keyword axonCoreFuncs fromJavaMillis funcs get getSafe gridColKinds gridColsToDict gridFormats gridRowsToDict has heading
syn keyword axonCoreFuncs hour hoursInDay index indexr insert insertAll invoke isAlpha isAlphaNum isBool isDate isDateTime isDict
syn keyword axonCoreFuncs isDigit isEmpty isEven isFunc isGrid isKeyword isList isLower isMetric isNaN isNumber isOdd isRef isSpace
syn keyword axonCoreFuncs isStr isTagName isTime isUpper isUri isWeekday isWeekend join joinAll keepCols last
syn keyword axonCoreFuncs log logDebug logErr logInfo logRead logWarn lower map marker max merge meta min minute missing month
syn keyword axonCoreFuncs moveTo na names nan navChildren navCommonAncestor navFilter navLevels navTrees negInf now nowTicks
syn keyword axonCoreFuncs numDaysInMonth occured padl padr params parseBool parseDate parseDateTime parseFilter parseFloat parseInt
syn keyword axonCoreFuncs parseNumber parseRef parseTime parseUnit parseUri passwordGenSalt passwordHmac passwordSet
syn keyword axonCoreFuncs posInf reFind reGroups reMatches read readAll readAllTagNames readAllTagVals readById
syn keyword axonCoreFuncs readByIds readByName readCount readLink readProjStatus refGen remove removeCol removeCols removeMarker
syn keyword axonCoreFuncs renameCol renameId renameIds reorderCols replace second set size sort sortr split spread start startsWith
syn keyword axonCoreFuncs sum swizzleRefs table tags time times to toAxonCode toChar toDateSpan toDateTimeSpan
syn keyword axonCoreFuncs toGrid toHex toJavaMillis toLocale toRec toRecId toRecIdList toRecList toStr toTagName toTimeZone trap
syn keyword axonCoreFuncs trim trimEnd trimStart tzdb unique unit unitsEq upper uriBasename uriDecode uriEcode uriExt uriHost
syn keyword axonCoreFuncs uriIsDir uriName uriPath uriPathStr uriPort uriScheme vals watchAdd watchClose watchOpen watchPoll watchRemove
syn keyword axonCoreFuncs weekday year
"syn keyword axonCoreFuncs tz dis func name
"removed funcs which are more commonly tags/markers

syn keyword axonCoreFuncsDates today lastMonth lastWeek lastYear thisMonth thisWeek thisYear pastMonth pastWeek pastYear yesterday

syn keyword axonHisFuncs covAvg discreteBoolPeriods discreteEnumPeriods discretePeriods durTrue hisClear
syn keyword axonHisFuncs hisClip hisInterpolate hisRead hisRemove hisRewrite hisRollup hisRollupAuto
syn keyword axonHisFuncs hisRollups hisSync hisWrite parseDiscreteBoolPeriods parseDiscreteEnumPeriods parseDiscretePeriods

syn keyword axonHisKitFuncs hisCompare hisCuSum hisDailyProfile hisDurProfile hisFindAll hisFindInPeriods hisFindPeaks
syn keyword axonHisKitFuncs hisFindPeriods hisFindSlicePeriods hisFindTroughs hisFlatten hisFoldCols hisInWindows hisJoin
syn keyword axonHisKitFuncs hisMap hisMapSlices hisPeriodIntersection hisPeriodMatrix hisPeriodShift hisPeriodUnion
syn keyword axonHisKitFuncs hisSlice hisSlidingWindows hisTransitionWindows	

syn keyword axonBacnetFuncs bacnetLearn	bacnetObjectTypeList bacnetPing bacnetPropertyIdentifierList bacnetReadHis
syn keyword axonBacnetFuncs bacnetReadObject bacnetReadObjectProperty bacnetReadPropertyMultiple bacnetScheduleEffectivePeriod 
syn keyword axonBacnetFuncs bacnetScheduleRead bacnetScheduleWrite bacnetSyncCur bacnetSyncHis bacnetWriteObjectProperty bacnetWritePropertyMultiple	

syn keyword axonEmailFuncs emailSend

syn keyword axonEnergyFuncs elecKwToKwhHis energyBaselinePrevMonth energyBaselinePrevYear 
syn keyword axonEnergyFuncs energyNormByArea energyNormByDegreeDay toMeterLoadEquips toMeterLoadPoints toSubmeters

syn keyword axonEnergyStarFuncs energyStarCustomerList energyStarHisPull energyStarHisPush energyStarMeterDelete energyStarMeterList 
syn keyword axonEnergyStarFuncs energyStarMeterPull energyStarMeterPush energyStarMeterRead energyStarPing energyStarPropertyAssociationsPush 
syn keyword axonEnergyStarFuncs energyStarPropertyDelete energyStarPropertyMetrics energyStarPropertyPull energyStarPropertyPush energyStarPropertyRead 
syn keyword axonEnergyStarFuncs energyStarUsageDelete energyStarUsageRead energyStarUsageWrite

syn keyword axonEquipFuncs equipRuntimePeriods equipToPoints equipsToRuleTargets longCycling matchPointVal sensorFailure
syn keyword axonEquipFuncs shortCycling sitesToRuleTargets toEquipRuntime toEquips toOccupied toPoints toSites

syn keyword axonGeoFuncs geoCountryCode geoCountryName geoTz geoUsStateCode geoUsStateName

syn keyword axonGreenButtonFuncs greenButtonReadUsage

syn keyword axonHaystackFuncs haystackCall haystackEval haystackHisRead haystackInvokeAction haystackPing haystackRead
syn keyword axonHaystackFuncs haystackReadAll haystackReadById haystackReadByIds haystackSyncCur haystackSyncHis

syn keyword axonHvacFuncs ahuCoolAndEcon ahuCoolAndHeat ahuCoolHeatCycling ahuCoolPeriods ahuEconPeriods ahuFanFailure ahuFanPeriods
syn keyword axonHvacFuncs ahuHeatAndEcon ahuHeatPeriods ahuOnAndFanOff toAhuCool toAhuDischargeFan toAhuDischargePressure toAhuDischargeTemp 
syn keyword axonHvacFuncs toAhuHeat toAhuMixedTemp toAhuOutsideDamper toAhuOutsideTemp toAhuReturnTemp toAhuZoneTemp

syn keyword axonIoFuncs certAddForUri certChainForUri certs ioAppend ioBin ioCharset ioCopy ioDelete ioDir ioGzip ioMove ioReadCsv
syn keyword axonIoFuncs ioReadJson ioReadJsonGrid ioReadLines ioReadStr ioReadTrio ioReadZinc ioWriteCsv ioWriteExcel ioWriteJson
syn keyword axonIoFuncs ioWriteLines ioWritePdf ioWriteStr ioWriteTrio ioWriteXml ioWriteZinc ioZipDir ioZipEntry	

syn keyword axonJobFuncs jobCancel jobCurRec jobFolioCompact jobFolioSnapshot jobIsRunning jobLog jobProgress jobRun jobSleep jobStatus jobStatusAll

syn keyword axonKipFuncs kpi

syn keyword axonLdapFuncs ldapAuth ldapSearchsi

syn keyword axonMathFuncs acos asin atan atan2 bitAnd bitNot bitOr bitShiftl bitShiftr bitXor ceil cos cosh exp fitLinearRegression floor log10 logE
syn keyword axonMathFuncs matrixAdd matrixDeterminant matrixFitLinearRegression matrixInverse matrixMult matrixSub matrixTranspose mean meanBiasErr
syn keyword axonMathFuncs median pi pow random remainder rootMeanSquareErr round sin sinh sqrt standardDeviation tan tanh toDegrees toMatrix toRadians

syn keyword axonModbusFuncs modbusPing modbusSyncCur

syn keyword axonNoteFuncs noteIsClosed noteIsOpen

syn keyword axonObixFuncs obixInvoke obixPing obixReadHis obixReadObj obixSyncCur obixSyncHis obixWriteObj

syn keyword axonPointFuncs enumDef enumDefs pointAuto pointConvert pointEmergencyAuto pointEmergencyOverride pointOverride
syn keyword axonPointFuncs pointSetDef pointThermistorTables pointWrite pointWriteArray

syn keyword axonScheduleFuncs scheduleHis

syn keyword axonSedonaFuncs sedonaPing sedonaReadComp sedonaSyncCur

syn keyword axonSnmpFuncs snmpGet snmpPing snmpReadTable snmpSyncCur

syn keyword axonSparkFuncs sparkHis sparkRecompute sparkRollup sparkRuleToTargets sparkTargetToRules sparkTargetsToRules sparks	

syn keyword axonSqlFuncs sqlDebugDrivers sqlExecute sqlInsert sqlPing sqlQuery sqlSyncHis sqlTables	

syn keyword axonStackhubFuncs stackhubCall stackhubInstall stackhubPackageRead stackhubPing stackhubVersionRead

syn keyword axonTariffFuncs tariffConsumptionCharge tariffCost tariffCreate tariffCreateBillHis tariffDemandCharge tariffFixedCharge tariffPercentageCharge	

syn keyword axonWeatherFuncs degreeDays degreeDaysBase toWeather weatherReadLocs weatherSunriseTime weatherSunsetTime weatherSyncHis	

syn keyword axonXmlFuncs xmlAttr xmlAttrs xmlElem xmlElems xmlName xmlNs xmlPrefix xmlQname xmlRead xmlVal	

hi def link axonKeywords Keyword
hi def link axonTodos Todo
hi def link axonNumber Constant
hi def link axonCommentSingle Comment
hi def link axonCommentMulti Comment
hi def link axonString String
hi def link axonUri String
hi def link axonBraces Special
hi def link axonBooleans Boolean
hi def link axonExceptions Exception
hi def link axonOperators Operator


"http://skyfoundry.com/doc/
"Funcs updated 2016-06-20
hi def link axonCoreFuncs Function
hi def link axonCoreFuncsDates Function
hi def link axonHisFuncs Function
hi def link axonHisKitFuncs Function
hi def link axonMathFuncs Function

hi def link axonBacnetFuncs Function
hi def link axonEmailFuncs Function
hi def link axonEnergyFuncs Function
hi def link axonEnergyStarFuncs Function
hi def link axonEquipFuncs Function
hi def link axonGeoFuncs Function
hi def link axonGreenButtonFuncs Function
hi def link axonHaystackFuncs Function
hi def link axonHvacFuncs Function
hi def link axonIoFuncs Function
hi def link axonJobFuncs Function
hi def link axonKpiFuncs Function
hi def link axonLdapFuncs Function
hi def link axonModbusFuncs Function
hi def link axonNoteFuncs Function
hi def link axonObixFuncs Function
hi def link axonPointFuncs Function
hi def link axonScheduleFuncs Function
hi def link axonSedonaFuncs Function
hi def link axonSnmpFuncs Function
hi def link axonSparkFuncs Function
hi def link axonSqlFuncs Function
hi def link axonStackhubFuncs Function
hi def link axonTariffFuncs Function
hi def link axonWeatherFuncs Function
hi def link axonXmlFunc Function

let b:current_syntax = "trio"
