unit nsXPCOM;

interface

uses
  nsConsts, nsGeckoStrings, nsTypes;

const
  NS_IASN1OBJECT_ASN1_END_CONTENTS = 0;
  NS_IASN1OBJECT_ASN1_BOOLEAN = 1;
  NS_IASN1OBJECT_ASN1_INTEGER = 2;
  NS_IASN1OBJECT_ASN1_BIT_STRING = 3;
  NS_IASN1OBJECT_ASN1_OCTET_STRING = 4;
  NS_IASN1OBJECT_ASN1_NULL = 5;
  NS_IASN1OBJECT_ASN1_OBJECT_ID = 6;
  NS_IASN1OBJECT_ASN1_ENUMERATED = 10;
  NS_IASN1OBJECT_ASN1_UTF8_STRING = 12;
  NS_IASN1OBJECT_ASN1_SEQUENCE = 16;
  NS_IASN1OBJECT_ASN1_SET = 17;
  NS_IASN1OBJECT_ASN1_PRINTABLE_STRING = 19;
  NS_IASN1OBJECT_ASN1_T61_STRING = 20;
  NS_IASN1OBJECT_ASN1_IA5_STRING = 22;
  NS_IASN1OBJECT_ASN1_UTC_TIME = 23;
  NS_IASN1OBJECT_ASN1_GEN_TIME = 24;
  NS_IASN1OBJECT_ASN1_VISIBLE_STRING = 26;
  NS_IASN1OBJECT_ASN1_UNIVERSAL_STRING = 28;
  NS_IASN1OBJECT_ASN1_BMP_STRING = 30;
  NS_IASN1OBJECT_ASN1_HIGH_TAG_NUMBER = 31;
  NS_IASN1OBJECT_ASN1_CONTEXT_SPECIFIC = 32;
  NS_IASN1OBJECT_ASN1_APPLICATION = 33;
  NS_IASN1OBJECT_ASN1_PRIVATE = 34;

  NS_IAUTHPROMPT_SAVE_PASSWORD_NEVER = 0;
  NS_IAUTHPROMPT_SAVE_PASSWORD_FOR_SESSION = 1;
  NS_IAUTHPROMPT_SAVE_PASSWORD_PERMANENTLY = 2;

  NS_IREQUEST_LOAD_NORMAL = 0;
  NS_IREQUEST_LOAD_BACKGROUND = 1;
  NS_IREQUEST_INHIBIT_CACHING = 128;
  NS_IREQUEST_INHIBIT_PERSISTENT_CACHING = 256;
  NS_IREQUEST_LOAD_BYPASS_CACHE = 512;
  NS_IREQUEST_LOAD_FROM_CACHE = 1024;
  NS_IREQUEST_VALIDATE_ALWAYS = 2048;
  NS_IREQUEST_VALIDATE_NEVER = 4096;
  NS_IREQUEST_VALIDATE_ONCE_PER_SESSION = 8192;

  NS_ICHANNEL_LOAD_DOCUMENT_URI = 65536;
  NS_ICHANNEL_LOAD_RETARGETED_DOCUMENT_URI = 131072;
  NS_ICHANNEL_LOAD_REPLACE = 262144;
  NS_ICHANNEL_LOAD_INITIAL_DOCUMENT_URI = 524288;
  NS_ICHANNEL_LOAD_TARGETED = 1048576;
  NS_ICHANNEL_LOAD_CALL_CONTENT_SNIFFERS = 2097152;

  NS_ICLASSINFO_SINGLETON = 1;
  NS_ICLASSINFO_THREADSAFE = 2;
  NS_ICLASSINFO_MAIN_THREAD_ONLY = 4;
  NS_ICLASSINFO_DOM_OBJECT = 8;
  NS_ICLASSINFO_PLUGIN_OBJECT = 16;
  NS_ICLASSINFO_EAGER_CLASSINFO = 32;
  NS_ICLASSINFO_CONTENT_NODE = 64;
  NS_ICLASSINFO_RESERVED = 2147483648;

  NS_ICONTEXTMENULISTENER_CONTEXT_NONE = 0;
  NS_ICONTEXTMENULISTENER_CONTEXT_LINK = 1;
  NS_ICONTEXTMENULISTENER_CONTEXT_IMAGE = 2;
  NS_ICONTEXTMENULISTENER_CONTEXT_DOCUMENT = 4;
  NS_ICONTEXTMENULISTENER_CONTEXT_TEXT = 8;
  NS_ICONTEXTMENULISTENER_CONTEXT_INPUT = 16;

  NS_ICOOKIE_STATUS_UNKNOWN = 0;
  NS_ICOOKIE_STATUS_ACCEPTED = 1;
  NS_ICOOKIE_STATUS_DOWNGRADED = 2;
  NS_ICOOKIE_STATUS_FLAGGED = 3;
  NS_ICOOKIE_STATUS_REJECTED = 4;
  NS_ICOOKIE_POLICY_UNKNOWN = 0;
  NS_ICOOKIE_POLICY_NONE = 1;
  NS_ICOOKIE_POLICY_NO_CONSENT = 2;
  NS_ICOOKIE_POLICY_IMPLICIT_CONSENT = 3;
  NS_ICOOKIE_POLICY_EXPLICIT_CONSENT = 4;
  NS_ICOOKIE_POLICY_NO_II = 5;

  NS_IFILE_NORMAL_FILE_TYPE = 0;
  NS_IFILE_DIRECTORY_TYPE = 1;

  NS_IDOMNODE_ELEMENT_NODE = 1;
  NS_IDOMNODE_ATTRIBUTE_NODE = 2;
  NS_IDOMNODE_TEXT_NODE = 3;
  NS_IDOMNODE_CDATA_SECTION_NODE = 4;
  NS_IDOMNODE_ENTITY_REFERENCE_NODE = 5;
  NS_IDOMNODE_ENTITY_NODE = 6;
  NS_IDOMNODE_PROCESSING_INSTRUCTION_NODE = 7;
  NS_IDOMNODE_COMMENT_NODE = 8;
  NS_IDOMNODE_DOCUMENT_NODE = 9;
  NS_IDOMNODE_DOCUMENT_TYPE_NODE = 10;
  NS_IDOMNODE_DOCUMENT_FRAGMENT_NODE = 11;
  NS_IDOMNODE_NOTATION_NODE = 12;

  NS_IDOMCSSVALUE_CSS_INHERIT = 0;
  NS_IDOMCSSVALUE_CSS_PRIMITIVE_VALUE = 1;
  NS_IDOMCSSVALUE_CSS_VALUE_LIST = 2;
  NS_IDOMCSSVALUE_CSS_CUSTOM = 3;

  NS_IDOMCSSPRIMITIVEVALUE_CSS_UNKNOWN = 0;
  NS_IDOMCSSPRIMITIVEVALUE_CSS_NUMBER = 1;
  NS_IDOMCSSPRIMITIVEVALUE_CSS_PERCENTAGE = 2;
  NS_IDOMCSSPRIMITIVEVALUE_CSS_EMS = 3;
  NS_IDOMCSSPRIMITIVEVALUE_CSS_EXS = 4;
  NS_IDOMCSSPRIMITIVEVALUE_CSS_PX = 5;
  NS_IDOMCSSPRIMITIVEVALUE_CSS_CM = 6;
  NS_IDOMCSSPRIMITIVEVALUE_CSS_MM = 7;
  NS_IDOMCSSPRIMITIVEVALUE_CSS_IN = 8;
  NS_IDOMCSSPRIMITIVEVALUE_CSS_PT = 9;
  NS_IDOMCSSPRIMITIVEVALUE_CSS_PC = 10;
  NS_IDOMCSSPRIMITIVEVALUE_CSS_DEG = 11;
  NS_IDOMCSSPRIMITIVEVALUE_CSS_RAD = 12;
  NS_IDOMCSSPRIMITIVEVALUE_CSS_GRAD = 13;
  NS_IDOMCSSPRIMITIVEVALUE_CSS_MS = 14;
  NS_IDOMCSSPRIMITIVEVALUE_CSS_S = 15;
  NS_IDOMCSSPRIMITIVEVALUE_CSS_HZ = 16;
  NS_IDOMCSSPRIMITIVEVALUE_CSS_KHZ = 17;
  NS_IDOMCSSPRIMITIVEVALUE_CSS_DIMENSION = 18;
  NS_IDOMCSSPRIMITIVEVALUE_CSS_STRING = 19;
  NS_IDOMCSSPRIMITIVEVALUE_CSS_URI = 20;
  NS_IDOMCSSPRIMITIVEVALUE_CSS_IDENT = 21;
  NS_IDOMCSSPRIMITIVEVALUE_CSS_ATTR = 22;
  NS_IDOMCSSPRIMITIVEVALUE_CSS_COUNTER = 23;
  NS_IDOMCSSPRIMITIVEVALUE_CSS_RECT = 24;
  NS_IDOMCSSPRIMITIVEVALUE_CSS_RGBCOLOR = 25;

  NS_IDOMCSSRULE_UNKNOWN_RULE = 0;
  NS_IDOMCSSRULE_STYLE_RULE = 1;
  NS_IDOMCSSRULE_CHARSET_RULE = 2;
  NS_IDOMCSSRULE_IMPORT_RULE = 3;
  NS_IDOMCSSRULE_MEDIA_RULE = 4;
  NS_IDOMCSSRULE_FONT_FACE_RULE = 5;
  NS_IDOMCSSRULE_PAGE_RULE = 6;

  NS_IDOMEVENT_CAPTURING_PHASE = 1;
  NS_IDOMEVENT_AT_TARGET = 2;
  NS_IDOMEVENT_BUBBLING_PHASE = 3;

  NS_IDOMDOMEXCEPTION_INDEX_SIZE_ERR = 1;
  NS_IDOMDOMEXCEPTION_DOMSTRING_SIZE_ERR = 2;
  NS_IDOMDOMEXCEPTION_HIERARCHY_REQUEST_ERR = 3;
  NS_IDOMDOMEXCEPTION_WRONG_DOCUMENT_ERR = 4;
  NS_IDOMDOMEXCEPTION_INVALID_CHARACTER_ERR = 5;
  NS_IDOMDOMEXCEPTION_NO_DATA_ALLOWED_ERR = 6;
  NS_IDOMDOMEXCEPTION_NO_MODIFICATION_ALLOWED_ERR = 7;
  NS_IDOMDOMEXCEPTION_NOT_FOUND_ERR = 8;
  NS_IDOMDOMEXCEPTION_NOT_SUPPORTED_ERR = 9;
  NS_IDOMDOMEXCEPTION_INUSE_ATTRIBUTE_ERR = 10;
  NS_IDOMDOMEXCEPTION_INVALID_STATE_ERR = 11;
  NS_IDOMDOMEXCEPTION_SYNTAX_ERR = 12;
  NS_IDOMDOMEXCEPTION_INVALID_MODIFICATION_ERR = 13;
  NS_IDOMDOMEXCEPTION_NAMESPACE_ERR = 14;
  NS_IDOMDOMEXCEPTION_INVALID_ACCESS_ERR = 15;
  NS_IDOMDOMEXCEPTION_VALIDATION_ERR = 16;
  NS_IDOMDOMEXCEPTION_TYPE_MISMATCH_ERR = 17;

  NS_IDOMOFFLINERESOURCELIST_UNCACHED = 0;
  NS_IDOMOFFLINERESOURCELIST_IDLE = 1;
  NS_IDOMOFFLINERESOURCELIST_CHECKING = 2;
  NS_IDOMOFFLINERESOURCELIST_DOWNLOADING = 3;
  NS_IDOMOFFLINERESOURCELIST_UPDATEREADY = 4;

  NS_IDOMRANGE_START_TO_START = 0;
  NS_IDOMRANGE_START_TO_END = 1;
  NS_IDOMRANGE_END_TO_END = 2;
  NS_IDOMRANGE_END_TO_START = 3;

  NS_IEMBEDDINGSITEWINDOW_DIM_FLAGS_POSITION = 1;
  NS_IEMBEDDINGSITEWINDOW_DIM_FLAGS_SIZE_INNER = 2;
  NS_IEMBEDDINGSITEWINDOW_DIM_FLAGS_SIZE_OUTER = 4;

  NS_IPREFBRANCH_PREF_INVALID = 0;
  NS_IPREFBRANCH_PREF_STRING = 32;
  NS_IPREFBRANCH_PREF_INT = 64;
  NS_IPREFBRANCH_PREF_BOOL = 128;

  NS_IPRINTSETTINGS_kInitSaveOddEvenPages = 1;
  NS_IPRINTSETTINGS_kInitSaveHeaderLeft = 2;
  NS_IPRINTSETTINGS_kInitSaveHeaderCenter = 4;
  NS_IPRINTSETTINGS_kInitSaveHeaderRight = 8;
  NS_IPRINTSETTINGS_kInitSaveFooterLeft = 16;
  NS_IPRINTSETTINGS_kInitSaveFooterCenter = 32;
  NS_IPRINTSETTINGS_kInitSaveFooterRight = 64;
  NS_IPRINTSETTINGS_kInitSaveBGColors = 128;
  NS_IPRINTSETTINGS_kInitSaveBGImages = 256;
  NS_IPRINTSETTINGS_kInitSavePaperSize = 512;
  NS_IPRINTSETTINGS_kInitSavePaperData = 8192;
  NS_IPRINTSETTINGS_kInitSaveUnwriteableMargins = 16384;
  NS_IPRINTSETTINGS_kInitSaveEdges = 32768;
  NS_IPRINTSETTINGS_kInitSaveReversed = 65536;
  NS_IPRINTSETTINGS_kInitSaveInColor = 131072;
  NS_IPRINTSETTINGS_kInitSaveOrientation = 262144;
  NS_IPRINTSETTINGS_kInitSavePrintCommand = 524288;
  NS_IPRINTSETTINGS_kInitSavePrinterName = 1048576;
  NS_IPRINTSETTINGS_kInitSavePrintToFile = 2097152;
  NS_IPRINTSETTINGS_kInitSaveToFileName = 4194304;
  NS_IPRINTSETTINGS_kInitSavePageDelay = 8388608;
  NS_IPRINTSETTINGS_kInitSaveMargins = 16777216;
  NS_IPRINTSETTINGS_kInitSaveNativeData = 33554432;
  NS_IPRINTSETTINGS_kInitSavePlexName = 67108864;
  NS_IPRINTSETTINGS_kInitSaveShrinkToFit = 134217728;
  NS_IPRINTSETTINGS_kInitSaveScaling = 268435456;
  NS_IPRINTSETTINGS_kInitSaveColorspace = 536870912;
  NS_IPRINTSETTINGS_kInitSaveResolutionName = 1073741824;
  NS_IPRINTSETTINGS_kInitSaveDownloadFonts = 2147483648;
  NS_IPRINTSETTINGS_kInitSaveAll = 4294967295;
  NS_IPRINTSETTINGS_kPrintOddPages = 1;
  NS_IPRINTSETTINGS_kPrintEvenPages = 2;
  NS_IPRINTSETTINGS_kEnableSelectionRB = 4;
  NS_IPRINTSETTINGS_kRangeAllPages = 0;
  NS_IPRINTSETTINGS_kRangeSpecifiedPageRange = 1;
  NS_IPRINTSETTINGS_kRangeSelection = 2;
  NS_IPRINTSETTINGS_kRangeFocusFrame = 3;
  NS_IPRINTSETTINGS_kJustLeft = 0;
  NS_IPRINTSETTINGS_kJustCenter = 1;
  NS_IPRINTSETTINGS_kJustRight = 2;
  NS_IPRINTSETTINGS_kUseInternalDefault = 0;
  NS_IPRINTSETTINGS_kUseSettingWhenPossible = 1;
  NS_IPRINTSETTINGS_kPaperSizeNativeData = 0;
  NS_IPRINTSETTINGS_kPaperSizeDefined = 1;
  NS_IPRINTSETTINGS_kPaperSizeInches = 0;
  NS_IPRINTSETTINGS_kPaperSizeMillimeters = 1;
  NS_IPRINTSETTINGS_kPortraitOrientation = 0;
  NS_IPRINTSETTINGS_kLandscapeOrientation = 1;
  NS_IPRINTSETTINGS_kNoFrames = 0;
  NS_IPRINTSETTINGS_kFramesAsIs = 1;
  NS_IPRINTSETTINGS_kSelectedFrame = 2;
  NS_IPRINTSETTINGS_kEachFrameSep = 3;
  NS_IPRINTSETTINGS_kFrameEnableNone = 0;
  NS_IPRINTSETTINGS_kFrameEnableAll = 1;
  NS_IPRINTSETTINGS_kFrameEnableAsIsAndEach = 2;
  NS_IPRINTSETTINGS_kOutputFormatNative = 0;
  NS_IPRINTSETTINGS_kOutputFormatPS = 1;
  NS_IPRINTSETTINGS_kOutputFormatPDF = 2;

  NS_IPROFILE_SHUTDOWN_PERSIST = 1;
  NS_IPROFILE_SHUTDOWN_CLEANSE = 2;

  NS_IPROGRAMMINGLANGUAGE_UNKNOWN = 0;
  NS_IPROGRAMMINGLANGUAGE_CPLUSPLUS = 1;
  NS_IPROGRAMMINGLANGUAGE_JAVASCRIPT = 2;
  NS_IPROGRAMMINGLANGUAGE_PYTHON = 3;
  NS_IPROGRAMMINGLANGUAGE_PERL = 4;
  NS_IPROGRAMMINGLANGUAGE_JAVA = 5;
  NS_IPROGRAMMINGLANGUAGE_ZX81_BASIC = 6;
  NS_IPROGRAMMINGLANGUAGE_JAVASCRIPT2 = 7;
  NS_IPROGRAMMINGLANGUAGE_RUBY = 8;
  NS_IPROGRAMMINGLANGUAGE_PHP = 9;
  NS_IPROGRAMMINGLANGUAGE_TCL = 10;
  NS_IPROGRAMMINGLANGUAGE_MAX = 10;

  NS_IPROMPT_BUTTON_POS_0 = 1;
  NS_IPROMPT_BUTTON_POS_1 = 256;
  NS_IPROMPT_BUTTON_POS_2 = 65536;
  NS_IPROMPT_BUTTON_TITLE_OK = 1;
  NS_IPROMPT_BUTTON_TITLE_CANCEL = 2;
  NS_IPROMPT_BUTTON_TITLE_YES = 3;
  NS_IPROMPT_BUTTON_TITLE_NO = 4;
  NS_IPROMPT_BUTTON_TITLE_SAVE = 5;
  NS_IPROMPT_BUTTON_TITLE_DONT_SAVE = 6;
  NS_IPROMPT_BUTTON_TITLE_REVERT = 7;
  NS_IPROMPT_BUTTON_TITLE_IS_STRING = 127;
  NS_IPROMPT_BUTTON_POS_0_DEFAULT = 0;
  NS_IPROMPT_BUTTON_POS_1_DEFAULT = 16777216;
  NS_IPROMPT_BUTTON_POS_2_DEFAULT = 33554432;
  NS_IPROMPT_BUTTON_DELAY_ENABLE = 67108864;
  NS_IPROMPT_STD_OK_CANCEL_BUTTONS = 513;
  NS_IPROMPT_STD_YES_NO_BUTTONS = 1027;

  NS_IPROMPTSERVICE_BUTTON_POS_0 = 1;
  NS_IPROMPTSERVICE_BUTTON_POS_1 = 256;
  NS_IPROMPTSERVICE_BUTTON_POS_2 = 65536;
  NS_IPROMPTSERVICE_BUTTON_TITLE_OK = 1;
  NS_IPROMPTSERVICE_BUTTON_TITLE_CANCEL = 2;
  NS_IPROMPTSERVICE_BUTTON_TITLE_YES = 3;
  NS_IPROMPTSERVICE_BUTTON_TITLE_NO = 4;
  NS_IPROMPTSERVICE_BUTTON_TITLE_SAVE = 5;
  NS_IPROMPTSERVICE_BUTTON_TITLE_DONT_SAVE = 6;
  NS_IPROMPTSERVICE_BUTTON_TITLE_REVERT = 7;
  NS_IPROMPTSERVICE_BUTTON_TITLE_IS_STRING = 127;
  NS_IPROMPTSERVICE_BUTTON_POS_0_DEFAULT = 0;
  NS_IPROMPTSERVICE_BUTTON_POS_1_DEFAULT = 16777216;
  NS_IPROMPTSERVICE_BUTTON_POS_2_DEFAULT = 33554432;
  NS_IPROMPTSERVICE_BUTTON_DELAY_ENABLE = 67108864;
  NS_IPROMPTSERVICE_STD_OK_CANCEL_BUTTONS = 513;
  NS_IPROMPTSERVICE_STD_YES_NO_BUTTONS = 1027;

  NS_IPROTOCOLHANDLER_URI_STD = 0;
  NS_IPROTOCOLHANDLER_URI_NORELATIVE = 1;
  NS_IPROTOCOLHANDLER_URI_NOAUTH = 2;
  NS_IPROTOCOLHANDLER_URI_INHERITS_SECURITY_CONTEXT = 16;
  NS_IPROTOCOLHANDLER_URI_FORBIDS_AUTOMATIC_DOCUMENT_REPLACEMENT = 32;
  NS_IPROTOCOLHANDLER_URI_LOADABLE_BY_ANYONE = 64;
  NS_IPROTOCOLHANDLER_URI_DANGEROUS_TO_LOAD = 128;
  NS_IPROTOCOLHANDLER_URI_IS_UI_RESOURCE = 256;
  NS_IPROTOCOLHANDLER_URI_IS_LOCAL_FILE = 512;
  NS_IPROTOCOLHANDLER_URI_NON_PERSISTABLE = 1024;
  NS_IPROTOCOLHANDLER_URI_DOES_NOT_RETURN_DATA = 2048;
  NS_IPROTOCOLHANDLER_ALLOWS_PROXY = 4;
  NS_IPROTOCOLHANDLER_ALLOWS_PROXY_HTTP = 8;

  NS_ISUPPORTSPRIMITIVE_TYPE_ID = 1;
  NS_ISUPPORTSPRIMITIVE_TYPE_CSTRING = 2;
  NS_ISUPPORTSPRIMITIVE_TYPE_STRING = 3;
  NS_ISUPPORTSPRIMITIVE_TYPE_PRBOOL = 4;
  NS_ISUPPORTSPRIMITIVE_TYPE_PRUINT8 = 5;
  NS_ISUPPORTSPRIMITIVE_TYPE_PRUINT16 = 6;
  NS_ISUPPORTSPRIMITIVE_TYPE_PRUINT32 = 7;
  NS_ISUPPORTSPRIMITIVE_TYPE_PRUINT64 = 8;
  NS_ISUPPORTSPRIMITIVE_TYPE_PRTIME = 9;
  NS_ISUPPORTSPRIMITIVE_TYPE_CHAR = 10;
  NS_ISUPPORTSPRIMITIVE_TYPE_PRINT16 = 11;
  NS_ISUPPORTSPRIMITIVE_TYPE_PRINT32 = 12;
  NS_ISUPPORTSPRIMITIVE_TYPE_PRINT64 = 13;
  NS_ISUPPORTSPRIMITIVE_TYPE_FLOAT = 14;
  NS_ISUPPORTSPRIMITIVE_TYPE_DOUBLE = 15;
  NS_ISUPPORTSPRIMITIVE_TYPE_VOID = 16;
  NS_ISUPPORTSPRIMITIVE_TYPE_INTERFACE_POINTER = 17;

  NS_IWEBBROWSERCHROME_STATUS_SCRIPT = 1;
  NS_IWEBBROWSERCHROME_STATUS_SCRIPT_DEFAULT = 2;
  NS_IWEBBROWSERCHROME_STATUS_LINK = 3;
  NS_IWEBBROWSERCHROME_CHROME_DEFAULT = 1;
  NS_IWEBBROWSERCHROME_CHROME_WINDOW_BORDERS = 2;
  NS_IWEBBROWSERCHROME_CHROME_WINDOW_CLOSE = 4;
  NS_IWEBBROWSERCHROME_CHROME_WINDOW_RESIZE = 8;
  NS_IWEBBROWSERCHROME_CHROME_MENUBAR = 16;
  NS_IWEBBROWSERCHROME_CHROME_TOOLBAR = 32;
  NS_IWEBBROWSERCHROME_CHROME_LOCATIONBAR = 64;
  NS_IWEBBROWSERCHROME_CHROME_STATUSBAR = 128;
  NS_IWEBBROWSERCHROME_CHROME_PERSONAL_TOOLBAR = 256;
  NS_IWEBBROWSERCHROME_CHROME_SCROLLBARS = 512;
  NS_IWEBBROWSERCHROME_CHROME_TITLEBAR = 1024;
  NS_IWEBBROWSERCHROME_CHROME_EXTRA = 2048;
  NS_IWEBBROWSERCHROME_CHROME_WITH_SIZE = 4096;
  NS_IWEBBROWSERCHROME_CHROME_WITH_POSITION = 8192;
  NS_IWEBBROWSERCHROME_CHROME_WINDOW_MIN = 16384;
  NS_IWEBBROWSERCHROME_CHROME_WINDOW_POPUP = 32768;
  NS_IWEBBROWSERCHROME_CHROME_WINDOW_RAISED = 33554432;
  NS_IWEBBROWSERCHROME_CHROME_WINDOW_LOWERED = 67108864;
  NS_IWEBBROWSERCHROME_CHROME_CENTER_SCREEN = 134217728;
  NS_IWEBBROWSERCHROME_CHROME_DEPENDENT = 268435456;
  NS_IWEBBROWSERCHROME_CHROME_MODAL = 536870912;
  NS_IWEBBROWSERCHROME_CHROME_OPENAS_DIALOG = 1073741824;
  NS_IWEBBROWSERCHROME_CHROME_OPENAS_CHROME = 2147483648;
  NS_IWEBBROWSERCHROME_CHROME_ALL = 4094;

  NS_IWEBBROWSERPRINT_PRINTPREVIEW_GOTO_PAGENUM = 0;
  NS_IWEBBROWSERPRINT_PRINTPREVIEW_PREV_PAGE = 1;
  NS_IWEBBROWSERPRINT_PRINTPREVIEW_NEXT_PAGE = 2;
  NS_IWEBBROWSERPRINT_PRINTPREVIEW_HOME = 3;
  NS_IWEBBROWSERPRINT_PRINTPREVIEW_END = 4;

  NS_IWEBBROWSERSETUP_SETUP_ALLOW_PLUGINS = 1;
  NS_IWEBBROWSERSETUP_SETUP_ALLOW_JAVASCRIPT = 2;
  NS_IWEBBROWSERSETUP_SETUP_ALLOW_META_REDIRECTS = 3;
  NS_IWEBBROWSERSETUP_SETUP_ALLOW_SUBFRAMES = 4;
  NS_IWEBBROWSERSETUP_SETUP_ALLOW_IMAGES = 5;
  NS_IWEBBROWSERSETUP_SETUP_FOCUS_DOC_BEFORE_CONTENT = 6;
  NS_IWEBBROWSERSETUP_SETUP_USE_GLOBAL_HISTORY = 256;
  NS_IWEBBROWSERSETUP_SETUP_IS_CHROME_WRAPPER = 7;

  NS_IWEBPROGRESS_NOTIFY_STATE_REQUEST = 1;
  NS_IWEBPROGRESS_NOTIFY_STATE_DOCUMENT = 2;
  NS_IWEBPROGRESS_NOTIFY_STATE_NETWORK = 4;
  NS_IWEBPROGRESS_NOTIFY_STATE_WINDOW = 8;
  NS_IWEBPROGRESS_NOTIFY_STATE_ALL = 15;
  NS_IWEBPROGRESS_NOTIFY_PROGRESS = 16;
  NS_IWEBPROGRESS_NOTIFY_STATUS = 32;
  NS_IWEBPROGRESS_NOTIFY_SECURITY = 64;
  NS_IWEBPROGRESS_NOTIFY_LOCATION = 128;
  NS_IWEBPROGRESS_NOTIFY_REFRESH = 256;
  NS_IWEBPROGRESS_NOTIFY_ALL = 511;

  NS_IWEBPROGRESSLISTENER_STATE_START = 1;
  NS_IWEBPROGRESSLISTENER_STATE_REDIRECTING = 2;
  NS_IWEBPROGRESSLISTENER_STATE_TRANSFERRING = 4;
  NS_IWEBPROGRESSLISTENER_STATE_NEGOTIATING = 8;
  NS_IWEBPROGRESSLISTENER_STATE_STOP = 16;
  NS_IWEBPROGRESSLISTENER_STATE_IS_REQUEST = 65536;
  NS_IWEBPROGRESSLISTENER_STATE_IS_DOCUMENT = 131072;
  NS_IWEBPROGRESSLISTENER_STATE_IS_NETWORK = 262144;
  NS_IWEBPROGRESSLISTENER_STATE_IS_WINDOW = 524288;
  NS_IWEBPROGRESSLISTENER_STATE_RESTORING = 16777216;
  NS_IWEBPROGRESSLISTENER_STATE_IS_INSECURE = 4;
  NS_IWEBPROGRESSLISTENER_STATE_IS_BROKEN = 1;
  NS_IWEBPROGRESSLISTENER_STATE_IS_SECURE = 2;
  NS_IWEBPROGRESSLISTENER_STATE_SECURE_HIGH = 262144;
  NS_IWEBPROGRESSLISTENER_STATE_SECURE_MED = 65536;
  NS_IWEBPROGRESSLISTENER_STATE_SECURE_LOW = 131072;
  NS_IWEBPROGRESSLISTENER_STATE_IDENTITY_EV_TOPLEVEL = 1048576;

  NS_IX509CERT_UNKNOWN_CERT = 0;
  NS_IX509CERT_CA_CERT = 1;
  NS_IX509CERT_USER_CERT = 2;
  NS_IX509CERT_EMAIL_CERT = 4;
  NS_IX509CERT_SERVER_CERT = 8;
  NS_IX509CERT_VERIFIED_OK = 0;
  NS_IX509CERT_NOT_VERIFIED_UNKNOWN = 1;
  NS_IX509CERT_CERT_REVOKED = 2;
  NS_IX509CERT_CERT_EXPIRED = 4;
  NS_IX509CERT_CERT_NOT_TRUSTED = 8;
  NS_IX509CERT_ISSUER_NOT_TRUSTED = 16;
  NS_IX509CERT_ISSUER_UNKNOWN = 32;
  NS_IX509CERT_INVALID_CA = 64;
  NS_IX509CERT_USAGE_NOT_ALLOWED = 128;
  NS_IX509CERT_CERT_USAGE_SSLClient = 0;
  NS_IX509CERT_CERT_USAGE_SSLServer = 1;
  NS_IX509CERT_CERT_USAGE_SSLServerWithStepUp = 2;
  NS_IX509CERT_CERT_USAGE_SSLCA = 3;
  NS_IX509CERT_CERT_USAGE_EmailSigner = 4;
  NS_IX509CERT_CERT_USAGE_EmailRecipient = 5;
  NS_IX509CERT_CERT_USAGE_ObjectSigner = 6;
  NS_IX509CERT_CERT_USAGE_UserCertImport = 7;
  NS_IX509CERT_CERT_USAGE_VerifyCA = 8;
  NS_IX509CERT_CERT_USAGE_ProtectedObjectSigner = 9;
  NS_IX509CERT_CERT_USAGE_StatusResponder = 10;
  NS_IX509CERT_CERT_USAGE_AnyCA = 11;

  NS_IX509CERTDB_UNTRUSTED = 0;
  NS_IX509CERTDB_TRUSTED_SSL = 1;
  NS_IX509CERTDB_TRUSTED_EMAIL = 2;
  NS_IX509CERTDB_TRUSTED_OBJSIGN = 4;

type
  nsISupports = interface;
  mozIJSSubScriptLoader = interface;
  nsIArray = interface;
  nsIASN1Object = interface;
  nsIASN1Sequence = interface;
  nsIAuthPrompt = interface;
  nsISimpleEnumerator = interface;
  nsICategoryManager = interface;
  nsICertificateDialogs = interface;
  nsIRequest = interface;
  nsIChannel = interface;
  nsIClassInfo = interface;
  nsIClipboardCommands = interface;
  nsIComponentManager = interface;
  nsIComponentRegistrar = interface;
  nsIContextMenuListener = interface;
  nsICookie = interface;
  nsICookieManager = interface;
  nsICRLInfo = interface;
  nsIDebug = interface;
  nsIFile = interface;
  nsIDirectoryServiceProvider = interface;
  nsIDirectoryServiceProvider2 = interface;
  nsIDirectoryService = interface;
  nsIDOM3DocumentEvent = interface;
  nsIDOM3EventTarget = interface;
  nsIDOMAbstractView = interface;
  nsIDOMNode = interface;
  nsIDOMAttr = interface;
  nsIDOMBarProp = interface;
  nsIDOMCharacterData = interface;
  nsIDOMText = interface;
  nsIDOMCDATASection = interface;
  nsIDOMComment = interface;
  nsIDOMCounter = interface;
  nsIDOMCSSValue = interface;
  nsIDOMCSSPrimitiveValue = interface;
  nsIDOMCSSRule = interface;
  nsIDOMCSSRuleList = interface;
  nsIDOMCSSStyleDeclaration = interface;
  nsIDOMStyleSheet = interface;
  nsIDOMCSSStyleSheet = interface;
  nsIDOMCSSValueList = interface;
  nsIDOMEvent = interface;
  nsIDOMCustomEvent = interface;
  nsIDOMDocument = interface;
  nsIDOMDocumentEvent = interface;
  nsIDOMDocumentFragment = interface;
  nsIDOMDocumentRange = interface;
  nsIDOMDocumentStyle = interface;
  nsIDOMDocumentType = interface;
  nsIDOMDocumentView = interface;
  nsIDOMDOMException = interface;
  nsIDOMDOMImplementation = interface;
  nsIDOMElement = interface;
  nsIDOMElementCSSInlineStyle = interface;
  nsIDOMEntity = interface;
  nsIDOMEntityReference = interface;
  nsIDOMEventGroup = interface;
  nsIDOMEventListener = interface;
  nsIDOMEventTarget = interface;
  nsIDOMHTMLElement = interface;
  nsIDOMHTMLAnchorElement = interface;
  nsIDOMHTMLAppletElement = interface;
  nsIDOMHTMLAreaElement = interface;
  nsIDOMHTMLBaseElement = interface;
  nsIDOMHTMLBaseFontElement = interface;
  nsIDOMHTMLBodyElement = interface;
  nsIDOMHTMLBRElement = interface;
  nsIDOMHTMLButtonElement = interface;
  nsIDOMHTMLCollection = interface;
  nsIDOMHTMLDirectoryElement = interface;
  nsIDOMHTMLDivElement = interface;
  nsIDOMHTMLDListElement = interface;
  nsIDOMHTMLDocument = interface;
  nsIDOMHTMLEmbedElement = interface;
  nsIDOMHTMLFieldSetElement = interface;
  nsIDOMHTMLFontElement = interface;
  nsIDOMHTMLFormElement = interface;
  nsIDOMHTMLFrameElement = interface;
  nsIDOMHTMLFrameSetElement = interface;
  nsIDOMHTMLHeadElement = interface;
  nsIDOMHTMLHeadingElement = interface;
  nsIDOMHTMLHRElement = interface;
  nsIDOMHTMLHtmlElement = interface;
  nsIDOMHTMLIFrameElement = interface;
  nsIDOMHTMLImageElement = interface;
  nsIDOMHTMLInputElement = interface;
  nsIDOMHTMLIsIndexElement = interface;
  nsIDOMHTMLLabelElement = interface;
  nsIDOMHTMLLegendElement = interface;
  nsIDOMHTMLLIElement = interface;
  nsIDOMHTMLLinkElement = interface;
  nsIDOMHTMLMapElement = interface;
  nsIDOMHTMLMenuElement = interface;
  nsIDOMHTMLMetaElement = interface;
  nsIDOMHTMLModElement = interface;
  nsIDOMHTMLObjectElement = interface;
  nsIDOMHTMLOListElement = interface;
  nsIDOMHTMLOptGroupElement = interface;
  nsIDOMHTMLOptionElement = interface;
  nsIDOMHTMLOptionsCollection = interface;
  nsIDOMHTMLParagraphElement = interface;
  nsIDOMHTMLParamElement = interface;
  nsIDOMHTMLPreElement = interface;
  nsIDOMHTMLQuoteElement = interface;
  nsIDOMHTMLScriptElement = interface;
  nsIDOMHTMLSelectElement = interface;
  nsIDOMHTMLStyleElement = interface;
  nsIDOMHTMLTableCaptionElement = interface;
  nsIDOMHTMLTableCellElement = interface;
  nsIDOMHTMLTableColElement = interface;
  nsIDOMHTMLTableElement = interface;
  nsIDOMHTMLTableRowElement = interface;
  nsIDOMHTMLTableSectionElement = interface;
  nsIDOMHTMLTextAreaElement = interface;
  nsIDOMHTMLTitleElement = interface;
  nsIDOMHTMLUListElement = interface;
  nsIDOMMediaList = interface;
  nsIDOMUIEvent = interface;
  nsIDOMMouseEvent = interface;
  nsIDOMNamedNodeMap = interface;
  nsIDOMNodeList = interface;
  nsIDOMNotation = interface;
  nsIDOMOfflineResourceList = interface;
  nsIDOMProcessingInstruction = interface;
  nsIDOMRange = interface;
  nsIDOMRect = interface;
  nsIDOMRGBColor = interface;
  nsIDOMStorage = interface;
  nsIDOMStorageEvent = interface;
  nsIDOMStorageItem = interface;
  nsIDOMStorageList = interface;
  nsIDOMStorageWindow = interface;
  nsIDOMStyleSheetList = interface;
  nsIDOMWindow = interface;
  nsIDOMWindow2 = interface;
  nsIDOMWindowCollection = interface;
  nsIDOMWindowUtils = interface;
  nsIEmbeddingSiteWindow = interface;
  nsIFactory = interface;
  nsIURI = interface;
  nsIURL = interface;
  nsIFileURL = interface;
  nsIGlobalHistory = interface;
  nsIHashable = interface;
  nsIHistoryEntry = interface;
  nsIHttpChannel = interface;
  nsIHttpHeaderVisitor = interface;
  nsIInputStream = interface;
  nsIInterfaceRequestor = interface;
  nsIIOService = interface;
  nsIJSON = interface;
  nsILoadGroup = interface;
  nsILocalFile = interface;
  nsIMemory = interface;
  nsIModule = interface;
  nsIMutableArray = interface;
  nsIObserver = interface;
  nsIObserverService = interface;
  nsIOutputStream = interface;
  nsIPrefBranch = interface;
  nsIPrefBranch2 = interface;
  nsIPrefLocalizedString = interface;
  nsIPrefService = interface;
  nsIPrintSession = interface;
  nsIPrintSettings = interface;
  nsIProfile = interface;
  nsIProfileChangeStatus = interface;
  nsIProgrammingLanguage = interface;
  nsIPrompt = interface;
  nsIPromptService = interface;
  nsIProperties = interface;
  nsIProtocolHandler = interface;
  nsIRequestObserver = interface;
  nsIScriptableInputStream = interface;
  nsISecurityWarningDialogs = interface;
  nsISelection = interface;
  nsIServiceManager = interface;
  nsISHistory = interface;
  nsISHistoryListener = interface;
  nsIStreamListener = interface;
  nsISupportsPrimitive = interface;
  nsISupportsID = interface;
  nsISupportsCString = interface;
  nsISupportsString = interface;
  nsISupportsPRBool = interface;
  nsISupportsPRUint8 = interface;
  nsISupportsPRUint16 = interface;
  nsISupportsPRUint32 = interface;
  nsISupportsPRUint64 = interface;
  nsISupportsPRTime = interface;
  nsISupportsChar = interface;
  nsISupportsPRInt16 = interface;
  nsISupportsPRInt32 = interface;
  nsISupportsPRInt64 = interface;
  nsISupportsFloat = interface;
  nsISupportsDouble = interface;
  nsISupportsVoid = interface;
  nsISupportsInterfacePointer = interface;
  nsITooltipListener = interface;
  nsITooltipTextProvider = interface;
  nsITraceRefcnt = interface;
  nsIUnicharStreamListener = interface;
  nsIUploadChannel = interface;
  nsIURIContentListener = interface;
  nsIWeakReference = interface;
  nsISupportsWeakReference = interface;
  nsIWebBrowser = interface;
  nsIWebBrowserChrome = interface;
  nsIWebBrowserChromeFocus = interface;
  nsIWebBrowserFind = interface;
  nsIWebBrowserFindInFrames = interface;
  nsIWebBrowserFocus = interface;
  nsIWebBrowserPrint = interface;
  nsIWebBrowserSetup = interface;
  nsIWebBrowserStream = interface;
  nsIWebProgress = interface;
  nsIWebProgressListener = interface;
  nsIWindowCreator = interface;
  nsIWindowWatcher = interface;
  nsIX509Cert = interface;
  nsIX509CertDB = interface;
  nsIX509CertValidity = interface;
  nsWriteSegmentFun = function (aInStream: nsIInputStream; 
                                aClosure: Pointer;
                                const aFromSegment: Pointer;
                                aToOffset: PRUint32;
                                aCount: PRUint32;
                                out aWriteCount: PRUint32): nsresult; stdcall;


  nsReadSegmentFun = function (aOutStream: nsIOutputStream;
                               aClosure: Pointer;
                               aToSegment: Pointer;
                               aFromOffset: PRUint32;
                               aCount: PRUint32;
                               out aReadCount: PRUint32): nsresult; stdcall;


  DOMTimeStamp = PRUint64;
  nsLoadFlags = PRUint32;
(*** 
 * An optional interface for accessing the HTTP or
 * javascript cookie object
 * 
 * @status FROZEN
 *)
  nsCookieStatus = PRInt32;
  nsCookiePolicy = PRInt32;
  nsISupports = interface
  ['{00000000-0000-0000-c000-000000000046}']
  end;

  mozIJSSubScriptLoader = interface(nsISupports)
  ['{8792d77e-1dd2-11b2-ac7f-9bc9be4f2916}']
    procedure LoadSubScript(const url: PWideChar); safecall;
  end;

  nsIArray = interface(nsISupports)
  ['{114744d9-c369-456e-b55a-52fe52880d2d}']
    function GetLength: PRUint32; safecall;
    property Length: PRUint32 read GetLength;
    procedure QueryElementAt(index: PRUint32; const uuid: TGUID; out _result); safecall;
    function IndexOf(startIndex: PRUint32; element: nsISupports): PRUint32; safecall;
    function Enumerate: nsISimpleEnumerator; safecall;
  end;

  nsIASN1Object = interface(nsISupports)
  ['{ba8bf582-1dd1-11b2-898c-f40246bc9a63}']
    function GetType: PRUint32; safecall;
    procedure SetType(aType: PRUint32); safecall;
    property _Type: PRUint32 read GetType write SetType;
    function GetTag: PRUint32; safecall;
    procedure SetTag(aTag: PRUint32); safecall;
    property Tag: PRUint32 read GetTag write SetTag;
    procedure GetDisplayName(aDisplayName: nsAString); safecall;
    procedure SetDisplayName(const aDisplayName: nsAString); safecall;
    procedure GetDisplayValue(aDisplayValue: nsAString); safecall;
    procedure SetDisplayValue(const aDisplayValue: nsAString); safecall;
  end;

  nsIASN1Sequence = interface(nsIASN1Object)
  ['{b6b957e6-1dd1-11b2-89d7-e30624f50b00}']
    function GetASN1Objects: nsIMutableArray; safecall;
    procedure SetASN1Objects(aASN1Objects: nsIMutableArray); safecall;
    property ASN1Objects: nsIMutableArray read GetASN1Objects write SetASN1Objects;
    function GetIsValidContainer: PRBool; safecall;
    procedure SetIsValidContainer(aIsValidContainer: PRBool); safecall;
    property IsValidContainer: PRBool read GetIsValidContainer write SetIsValidContainer;
    function GetIsExpanded: PRBool; safecall;
    procedure SetIsExpanded(aIsExpanded: PRBool); safecall;
    property IsExpanded: PRBool read GetIsExpanded write SetIsExpanded;
  end;

  nsIAuthPrompt = interface(nsISupports)
  ['{358089f9-ee4b-4711-82fd-bcd07fc62061}']
    function Prompt(const dialogTitle: PWideChar; const text: PWideChar; const passwordRealm: PWideChar; savePassword: PRUint32; const defaultText: PWideChar; out _result: PWideChar): PRBool; safecall;
    function PromptUsernameAndPassword(const dialogTitle: PWideChar; const text: PWideChar; const passwordRealm: PWideChar; savePassword: PRUint32; out user: PWideChar; out pwd: PWideChar): PRBool; safecall;
    function PromptPassword(const dialogTitle: PWideChar; const text: PWideChar; const passwordRealm: PWideChar; savePassword: PRUint32; out pwd: PWideChar): PRBool; safecall;
  end;

  nsISimpleEnumerator = interface(nsISupports)
  ['{d1899240-f9d2-11d2-bdd6-000064657374}']
    function HasMoreElements: PRBool; safecall;
    function GetNext: nsISupports; safecall;
  end;

  nsICategoryManager = interface(nsISupports)
  ['{3275b2cd-af6d-429a-80d7-f0c5120342ac}']
    function GetCategoryEntry(const aCategory: PAnsiChar; const aEntry: PAnsiChar): PAnsiChar; safecall;
    function AddCategoryEntry(const aCategory: PAnsiChar; const aEntry: PAnsiChar; const aValue: PAnsiChar; aPersist: PRBool; aReplace: PRBool): PAnsiChar; safecall;
    procedure DeleteCategoryEntry(const aCategory: PAnsiChar; const aEntry: PAnsiChar; aPersist: PRBool); safecall;
    procedure DeleteCategory(const aCategory: PAnsiChar); safecall;
    function EnumerateCategory(const aCategory: PAnsiChar): nsISimpleEnumerator; safecall;
    function EnumerateCategories: nsISimpleEnumerator; safecall;
  end;

  nsICertificateDialogs = interface(nsISupports)
  ['{a03ca940-09be-11d5-ac5d-000064657374}']
    function ConfirmDownloadCACert(ctx: nsIInterfaceRequestor; cert: nsIX509Cert; out trust: PRUint32): PRBool; safecall;
    procedure NotifyCACertExists(ctx: nsIInterfaceRequestor); safecall;
    function SetPKCS12FilePassword(ctx: nsIInterfaceRequestor; password: nsAString): PRBool; safecall;
    function GetPKCS12FilePassword(ctx: nsIInterfaceRequestor; password: nsAString): PRBool; safecall;
    procedure ViewCert(ctx: nsIInterfaceRequestor; cert: nsIX509Cert); safecall;
    procedure CrlImportStatusDialog(ctx: nsIInterfaceRequestor; crl: nsICRLInfo); safecall;
  end;

  nsIRequest = interface(nsISupports)
  ['{ef6bfbd2-fd46-48d8-96b7-9f8f0fd387fe}']
    procedure GetName(aName: nsAUTF8String); safecall;
    function IsPending: PRBool; safecall;
    function GetStatus: nsresult; safecall;
    property Status: nsresult read GetStatus;
    procedure Cancel(aStatus: nsresult); safecall;
    procedure Suspend; safecall;
    procedure Resume; safecall;
    function GetLoadGroup: nsILoadGroup; safecall;
    procedure SetLoadGroup(aLoadGroup: nsILoadGroup); safecall;
    property LoadGroup: nsILoadGroup read GetLoadGroup write SetLoadGroup;
    function GetLoadFlags: nsLoadFlags; safecall;
    procedure SetLoadFlags(aLoadFlags: nsLoadFlags); safecall;
    property LoadFlags: nsLoadFlags read GetLoadFlags write SetLoadFlags;
  end;

  nsIChannel = interface(nsIRequest)
  ['{06f6ada3-7729-4e72-8d3f-bf8ba630ff9b}']
    function GetOriginalURI: nsIURI; safecall;
    procedure SetOriginalURI(aOriginalURI: nsIURI); safecall;
    property OriginalURI: nsIURI read GetOriginalURI write SetOriginalURI;
    function GetURI: nsIURI; safecall;
    property URI: nsIURI read GetURI;
    function GetOwner: nsISupports; safecall;
    procedure SetOwner(aOwner: nsISupports); safecall;
    property Owner: nsISupports read GetOwner write SetOwner;
    function GetNotificationCallbacks: nsIInterfaceRequestor; safecall;
    procedure SetNotificationCallbacks(aNotificationCallbacks: nsIInterfaceRequestor); safecall;
    property NotificationCallbacks: nsIInterfaceRequestor read GetNotificationCallbacks write SetNotificationCallbacks;
    function GetSecurityInfo: nsISupports; safecall;
    property SecurityInfo: nsISupports read GetSecurityInfo;
    procedure GetContentType(aContentType: nsACString); safecall;
    procedure SetContentType(const aContentType: nsACString); safecall;
    procedure GetContentCharset(aContentCharset: nsACString); safecall;
    procedure SetContentCharset(const aContentCharset: nsACString); safecall;
    function GetContentLength: PRInt32; safecall;
    procedure SetContentLength(aContentLength: PRInt32); safecall;
    property ContentLength: PRInt32 read GetContentLength write SetContentLength;
    function Open: nsIInputStream; safecall;
    procedure AsyncOpen(aListener: nsIStreamListener; aContext: nsISupports); safecall;
    function GetContentDisposition: PRUint32; safecall;
    property ContentDisposition: PRUint32 read GetContentDisposition;
    procedure GetContentDispositionFileName(aContentDispositionFileName: nsACString); safecall;
    procedure GetContentDispositionHeader(aContentDispositionHeader: nsACString); safecall;
  end;

  nsIClassInfo = interface(nsISupports)
  ['{986c11d0-f340-11d4-9075-0010a4e73d9a}']
    procedure GetInterfaces(out count: PRUint32; out _array_array); safecall;
    function GetHelperForLanguage(language: PRUint32): nsISupports; safecall;
    function GetContractID: PAnsiChar; safecall;
    property ContractID: PAnsiChar read GetContractID;
    function GetClassDescription: PAnsiChar; safecall;
    property ClassDescription: PAnsiChar read GetClassDescription;
    function GetClassID: PGUID; safecall;
    property ClassID: PGUID read GetClassID;
    function GetImplementationLanguage: PRUint32; safecall;
    property ImplementationLanguage: PRUint32 read GetImplementationLanguage;
    function GetFlags: PRUint32; safecall;
    property Flags: PRUint32 read GetFlags;
    function GetClassIDNoAlloc: TGUID; safecall;
    property ClassIDNoAlloc: TGUID read GetClassIDNoAlloc;
  end;

  nsIClipboardCommands = interface(nsISupports)
  ['{b8100c90-73be-11d2-92a5-00105a1b0d64}']
    function CanCutSelection: PRBool; safecall;
    function CanCopySelection: PRBool; safecall;
    function CanCopyLinkLocation: PRBool; safecall;
    function CanCopyImageLocation: PRBool; safecall;
    function CanCopyImageContents: PRBool; safecall;
    function CanPaste: PRBool; safecall;
    procedure CutSelection; safecall;
    procedure CopySelection; safecall;
    procedure CopyLinkLocation; safecall;
    procedure CopyImageLocation; safecall;
    procedure CopyImageContents; safecall;
    procedure Paste; safecall;
    procedure SelectAll; safecall;
    procedure SelectNone; safecall;
  end;

  nsIComponentManager = interface(nsISupports)
  ['{1d940426-5fe5-42c3-84ae-a300f2d9ebd5}']
    procedure GetClassObject(const aClass: TGUID; const aIID: TGUID; out _result); safecall;
    procedure GetClassObjectByContractID(const aContractID: PAnsiChar; const aIID: TGUID; out _result); safecall;
    procedure CreateInstance(const aClass: TGUID; const aDelegate: nsISupports; const aIID: TGUID; out _result); safecall;
    procedure CreateInstanceByContractID(const aContractID: PAnsiChar; const aDelegate: nsISupports; const aIID: TGUID; out _result); safecall;
    procedure AddBootstappedManifestLocation(const aLocation: nsILocalFile); safecall;
    procedure RemoverBootstrappedManifestLocation(const aLocation: nsILocalFile); safecall;
  end;

  nsIComponentRegistrar = interface(nsISupports)
  ['{2417cbfe-65ad-48a6-b4b6-eb84db174392}']
    procedure AutoRegister(aSpec: nsIFile); safecall;
    procedure AutoUnregister(aSpec: nsIFile); safecall;
    procedure RegisterFactory(const aClass: TGUID; const aClassName: PAnsiChar; const aContractID: PAnsiChar; aFactory: nsIFactory); safecall;
    procedure UnregisterFactory(const aClass: TGUID; aFactory: nsIFactory); safecall;
    procedure RegisterFactoryLocation(const aClass: TGUID; const aClassName: PAnsiChar; const aContractID: PAnsiChar; aFile: nsIFile; const aLoaderStr: PAnsiChar; const aType: PAnsiChar); safecall;
    procedure UnregisterFactoryLocation(const aClass: TGUID; aFile: nsIFile); safecall;
    function IsCIDRegistered(const aClass: TGUID): PRBool; safecall;
    function IsContractIDRegistered(const aContractID: PAnsiChar): PRBool; safecall;
    function EnumerateCIDs: nsISimpleEnumerator; safecall;
    function EnumerateContractIDs: nsISimpleEnumerator; safecall;
    function CIDToContractID(const aClass: TGUID): PAnsiChar; safecall;
    function ContractIDToCID(const aContractID: PAnsiChar): PGUID; safecall;
  end;

  nsIContextMenuListener = interface(nsISupports)
  ['{3478b6b0-3875-11d4-94ef-0020183bf181}']
    procedure OnShowContextMenu(aContextFlags: PRUint32; aEvent: nsIDOMEvent; aNode: nsIDOMNode); safecall;
  end;

  nsICookie = interface(nsISupports)
  ['{e9fcb9a4-d376-458f-b720-e65e7df593bc}']
    procedure GetName(aName: nsACString); safecall;
    procedure GetValue(aValue: nsACString); safecall;
    function GetIsDomain: PRBool; safecall;
    property IsDomain: PRBool read GetIsDomain;
    procedure GetHost(aHost: nsAUTF8String); safecall;
    procedure GetPath(aPath: nsAUTF8String); safecall;
    function GetIsSecure: PRBool; safecall;
    property IsSecure: PRBool read GetIsSecure;
    function GetExpires: PRUint64; safecall;
    property Expires: PRUint64 read GetExpires;
    function GetStatus: nsCookieStatus; safecall;
    property Status: nsCookieStatus read GetStatus;
    function GetPolicy: nsCookiePolicy; safecall;
    property Policy: nsCookiePolicy read GetPolicy;
  end;

  nsICookieManager = interface(nsISupports)
  ['{aaab6710-0f2c-11d5-a53b-0010a401eb10}']
    procedure RemoveAll; safecall;
    function GetEnumerator: nsISimpleEnumerator; safecall;
    property Enumerator: nsISimpleEnumerator read GetEnumerator;
    procedure Remove(const aDomain: nsAUTF8String; const aName: nsACString; const aPath: nsAUTF8String; aBlocked: PRBool); safecall;
  end;

  nsICRLInfo = interface(nsISupports)
  ['{c185d920-4a3e-11d5-ba27-00108303b117}']
    procedure GetOrganization(aOrganization: nsAString); safecall;
    procedure GetOrganizationalUnit(aOrganizationalUnit: nsAString); safecall;
    function GetLastUpdate: PRTime; safecall;
    property LastUpdate: PRTime read GetLastUpdate;
    function GetNextUpdate: PRTime; safecall;
    property NextUpdate: PRTime read GetNextUpdate;
    procedure GetLastUpdateLocale(aLastUpdateLocale: nsAString); safecall;
    procedure GetNextUpdateLocale(aNextUpdateLocale: nsAString); safecall;
    procedure GetNameInDb(aNameInDb: nsAString); safecall;
    procedure GetLastFetchURL(aLastFetchURL: nsAUTF8String); safecall;
  end;

  nsIDebug = interface(nsISupports)
  ['{3bf0c3d7-3bd9-4cf2-a971-33572c503e1e}']
    procedure Assertion(const aStr: PAnsiChar; const aExpr: PAnsiChar; const aFile: PAnsiChar; aLine: PRInt32); safecall;
    procedure Warning(const aStr: PAnsiChar; const aFile: PAnsiChar; aLine: PRInt32); safecall;
    procedure Break(const aFile: PAnsiChar; aLine: PRInt32); safecall;
    procedure Abort(const aFile: PAnsiChar; aLine: PRInt32); safecall;
  end;

  nsIFile = interface(nsISupports)
  ['{c8c0a080-0868-11d3-915f-d9d889d48e3c}']
    procedure Append(const node: nsAString); safecall;
    procedure AppendNative(const node: nsACString); safecall;
    procedure Normalize; safecall;
    procedure Create(_type: PRUint32; permissions: PRUint32); safecall;
    procedure GetLeafName(aLeafName: nsAString); safecall;
    procedure SetLeafName(const aLeafName: nsAString); safecall;
    procedure GetNativeLeafName(aNativeLeafName: nsACString); safecall;
    procedure SetNativeLeafName(const aNativeLeafName: nsACString); safecall;
    procedure CopyTo(newParentDir: nsIFile; const newName: nsAString); safecall;
    procedure CopyToNative(newParentDir: nsIFile; const newName: nsACString); safecall;
    procedure CopyToFollowingLinks(newParentDir: nsIFile; const newName: nsAString); safecall;
    procedure CopyToFollowingLinksNative(newParentDir: nsIFile; const newName: nsACString); safecall;
    procedure MoveTo(newParentDir: nsIFile; const newName: nsAString); safecall;
    procedure MoveToNative(newParentDir: nsIFile; const newName: nsACString); safecall;
    procedure Remove(recursive: PRBool); safecall;
    function GetPermissions: PRUint32; safecall;
    procedure SetPermissions(aPermissions: PRUint32); safecall;
    property Permissions: PRUint32 read GetPermissions write SetPermissions;
    function GetPermissionsOfLink: PRUint32; safecall;
    procedure SetPermissionsOfLink(aPermissionsOfLink: PRUint32); safecall;
    property PermissionsOfLink: PRUint32 read GetPermissionsOfLink write SetPermissionsOfLink;
    function GetLastModifiedTime: PRInt64; safecall;
    procedure SetLastModifiedTime(aLastModifiedTime: PRInt64); safecall;
    property LastModifiedTime: PRInt64 read GetLastModifiedTime write SetLastModifiedTime;
    function GetLastModifiedTimeOfLink: PRInt64; safecall;
    procedure SetLastModifiedTimeOfLink(aLastModifiedTimeOfLink: PRInt64); safecall;
    property LastModifiedTimeOfLink: PRInt64 read GetLastModifiedTimeOfLink write SetLastModifiedTimeOfLink;
    function GetFileSize: PRInt64; safecall;
    procedure SetFileSize(aFileSize: PRInt64); safecall;
    property FileSize: PRInt64 read GetFileSize write SetFileSize;
    function GetFileSizeOfLink: PRInt64; safecall;
    property FileSizeOfLink: PRInt64 read GetFileSizeOfLink;
    procedure GetTarget(aTarget: nsAString); safecall;
    procedure GetNativeTarget(aNativeTarget: nsACString); safecall;
    procedure GetPath(aPath: nsAString); safecall;
    procedure GetNativePath(aNativePath: nsACString); safecall;
    function Exists: PRBool; safecall;
    function IsWritable: PRBool; safecall;
    function IsReadable: PRBool; safecall;
    function IsExecutable: PRBool; safecall;
    function IsHidden: PRBool; safecall;
    function IsDirectory: PRBool; safecall;
    function IsFile: PRBool; safecall;
    function IsSymlink: PRBool; safecall;
    function IsSpecial: PRBool; safecall;
    procedure CreateUnique(_type: PRUint32; permissions: PRUint32); safecall;
    function Clone: nsIFile; safecall;
    function Equals(inFile: nsIFile): PRBool; safecall;
    function _Contains(inFile: nsIFile; recur: PRBool): PRBool; safecall;
    function GetParent: nsIFile; safecall;
    property Parent: nsIFile read GetParent;
    function GetDirectoryEntries: nsISimpleEnumerator; safecall;
    property DirectoryEntries: nsISimpleEnumerator read GetDirectoryEntries;
  end;

  nsIDirectoryServiceProvider = interface(nsISupports)
  ['{bbf8cab0-d43a-11d3-8cc2-00609792278c}']
    function GetFile(const prop: PAnsiChar; out persistent: PRBool): nsIFile; safecall;
  end;

  nsIDirectoryServiceProvider2 = interface(nsIDirectoryServiceProvider)
  ['{2f977d4b-5485-11d4-87e2-0010a4e75ef2}']
    function GetFiles(const prop: PAnsiChar): nsISimpleEnumerator; safecall;
  end;

  nsIDirectoryService = interface(nsISupports)
  ['{57a66a60-d43a-11d3-8cc2-00609792278c}']
    procedure Init; safecall;
    procedure RegisterProvider(prov: nsIDirectoryServiceProvider); safecall;
    procedure UnregisterProvider(prov: nsIDirectoryServiceProvider); safecall;
  end;

  nsIDOM3DocumentEvent = interface(nsISupports)
  ['{090ecc19-b7cb-4f47-ae47-ed68d4926249}']
    function CreateEventGroup: nsIDOMEventGroup; safecall;
  end;

  nsIDOM3EventTarget = interface(nsISupports)
  ['{3e9c01a7-de97-4c3b-8294-b4bd9d7056d1}']
    procedure AddGroupedEventListener(const _type: nsAString; listener: nsIDOMEventListener; useCapture: PRBool; evtGroup: nsIDOMEventGroup); safecall;
    procedure RemoveGroupedEventListener(const _type: nsAString; listener: nsIDOMEventListener; useCapture: PRBool; evtGroup: nsIDOMEventGroup); safecall;
    function CanTrigger(const _type: nsAString): PRBool; safecall;
    function IsRegisteredHere(const _type: nsAString): PRBool; safecall;
  end;

  nsIDOMAbstractView = interface(nsISupports)
  ['{f51ebade-8b1a-11d3-aae7-0010830123b4}']
    function GetDocument: nsIDOMDocumentView; safecall;
    property Document: nsIDOMDocumentView read GetDocument;
  end;

  nsIDOMNode = interface(nsISupports)
  ['{a6cf907c-15b3-11d2-932e-00805f8add32}']
    procedure GetNodeName(aNodeName: nsAString); safecall;
    procedure GetNodeValue(aNodeValue: nsAString); safecall;
    procedure SetNodeValue(const aNodeValue: nsAString); safecall;
    function GetNodeType: PRUint16; safecall;
    property NodeType: PRUint16 read GetNodeType;
    function GetParentNode: nsIDOMNode; safecall;
    property ParentNode: nsIDOMNode read GetParentNode;
    function GetChildNodes: nsIDOMNodeList; safecall;
    property ChildNodes: nsIDOMNodeList read GetChildNodes;
    function GetFirstChild: nsIDOMNode; safecall;
    property FirstChild: nsIDOMNode read GetFirstChild;
    function GetLastChild: nsIDOMNode; safecall;
    property LastChild: nsIDOMNode read GetLastChild;
    function GetPreviousSibling: nsIDOMNode; safecall;
    property PreviousSibling: nsIDOMNode read GetPreviousSibling;
    function GetNextSibling: nsIDOMNode; safecall;
    property NextSibling: nsIDOMNode read GetNextSibling;
    function GetAttributes: nsIDOMNamedNodeMap; safecall;
    property Attributes: nsIDOMNamedNodeMap read GetAttributes;
    function GetOwnerDocument: nsIDOMDocument; safecall;
    property OwnerDocument: nsIDOMDocument read GetOwnerDocument;
    function InsertBefore(newChild: nsIDOMNode; refChild: nsIDOMNode): nsIDOMNode; safecall;
    function ReplaceChild(newChild: nsIDOMNode; oldChild: nsIDOMNode): nsIDOMNode; safecall;
    function RemoveChild(oldChild: nsIDOMNode): nsIDOMNode; safecall;
    function AppendChild(newChild: nsIDOMNode): nsIDOMNode; safecall;
    function HasChildNodes: PRBool; safecall;
    function CloneNode(deep: PRBool): nsIDOMNode; safecall;
    procedure Normalize; safecall;
    function IsSupported(const feature: nsAString; const version: nsAString): PRBool; safecall;
    procedure GetNamespaceURI(aNamespaceURI: nsAString); safecall;
    procedure GetPrefix(aPrefix: nsAString); safecall;
    procedure SetPrefix(const aPrefix: nsAString); safecall;
    procedure GetLocalName(aLocalName: nsAString); safecall;
    function HasAttributes: PRBool; safecall;
  end;

  nsIDOMAttr = interface(nsIDOMNode)
  ['{a6cf9070-15b3-11d2-932e-00805f8add32}']
    procedure GetName(aName: nsAString); safecall;
    function GetSpecified: PRBool; safecall;
    property Specified: PRBool read GetSpecified;
    procedure GetValue(aValue: nsAString); safecall;
    procedure SetValue(const aValue: nsAString); safecall;
    function GetOwnerElement: nsIDOMElement; safecall;
    property OwnerElement: nsIDOMElement read GetOwnerElement;
  end;

  nsIDOMBarProp = interface(nsISupports)
  ['{9eb2c150-1d56-11d3-8221-0060083a0bcf}']
    function GetVisible: PRBool; safecall;
    procedure SetVisible(aVisible: PRBool); safecall;
    property Visible: PRBool read GetVisible write SetVisible;
  end;

  nsIDOMCharacterData = interface(nsIDOMNode)
  ['{a6cf9072-15b3-11d2-932e-00805f8add32}']
    procedure GetData(aData: nsAString); safecall;
    procedure SetData(const aData: nsAString); safecall;
    function GetLength: PRUint32; safecall;
    property Length: PRUint32 read GetLength;
    procedure SubstringData(offset: PRUint32; count: PRUint32; _retval: nsAString); safecall;
    procedure AppendData(const arg: nsAString); safecall;
    procedure InsertData(offset: PRUint32; const arg: nsAString); safecall;
    procedure DeleteData(offset: PRUint32; count: PRUint32); safecall;
    procedure ReplaceData(offset: PRUint32; count: PRUint32; const arg: nsAString); safecall;
  end;

  nsIDOMText = interface(nsIDOMCharacterData)
  ['{a6cf9082-15b3-11d2-932e-00805f8add32}']
    function SplitText(offset: PRUint32): nsIDOMText; safecall;
  end;

  nsIDOMCDATASection = interface(nsIDOMText)
  ['{a6cf9071-15b3-11d2-932e-00805f8add32}']
  end;

  nsIDOMComment = interface(nsIDOMCharacterData)
  ['{a6cf9073-15b3-11d2-932e-00805f8add32}']
  end;

  nsIDOMCounter = interface(nsISupports)
  ['{31adb439-0055-402d-9b1d-d5ca94f3f55b}']
    procedure GetIdentifier(aIdentifier: nsAString); safecall;
    procedure GetListStyle(aListStyle: nsAString); safecall;
    procedure GetSeparator(aSeparator: nsAString); safecall;
  end;

  nsIDOMCSSValue = interface(nsISupports)
  ['{009f7ea5-9e80-41be-b008-db62f10823f2}']
    procedure GetCssText(aCssText: nsAString); safecall;
    procedure SetCssText(const aCssText: nsAString); safecall;
    function GetCssValueType: PRUint16; safecall;
    property CssValueType: PRUint16 read GetCssValueType;
  end;

  nsIDOMCSSPrimitiveValue = interface(nsIDOMCSSValue)
  ['{e249031f-8df9-4e7a-b644-18946dce0019}']
    function GetPrimitiveType: PRUint16; safecall;
    property PrimitiveType: PRUint16 read GetPrimitiveType;
    procedure SetFloatValue(unitType: PRUint16; floatValue: Single); safecall;
    function GetFloatValue(unitType: PRUint16): Single; safecall;
    procedure SetStringValue(stringType: PRUint16; const stringValue: nsAString); safecall;
    procedure GetStringValue(_retval: nsAString); safecall;
    function GetCounterValue: nsIDOMCounter; safecall;
    function GetRectValue: nsIDOMRect; safecall;
    function GetRGBColorValue: nsIDOMRGBColor; safecall;
  end;

  nsIDOMCSSRule = interface(nsISupports)
  ['{a6cf90c1-15b3-11d2-932e-00805f8add32}']
    function GetType: PRUint16; safecall;
    property _Type: PRUint16 read GetType;
    procedure GetCssText(aCssText: nsAString); safecall;
    procedure SetCssText(const aCssText: nsAString); safecall;
    function GetParentStyleSheet: nsIDOMCSSStyleSheet; safecall;
    property ParentStyleSheet: nsIDOMCSSStyleSheet read GetParentStyleSheet;
    function GetParentRule: nsIDOMCSSRule; safecall;
    property ParentRule: nsIDOMCSSRule read GetParentRule;
  end;

  nsIDOMCSSRuleList = interface(nsISupports)
  ['{a6cf90c0-15b3-11d2-932e-00805f8add32}']
    function GetLength: PRUint32; safecall;
    property Length: PRUint32 read GetLength;
    function Item(index: PRUint32): nsIDOMCSSRule; safecall;
  end;

  nsIDOMCSSStyleDeclaration = interface(nsISupports)
  ['{a6cf90be-15b3-11d2-932e-00805f8add32}']
    procedure GetCssText(aCssText: nsAString); safecall;
    procedure SetCssText(const aCssText: nsAString); safecall;
    procedure GetPropertyValue(const propertyName: nsAString; _retval: nsAString); safecall;
    function GetPropertyCSSValue(const propertyName: nsAString): nsIDOMCSSValue; safecall;
    procedure RemoveProperty(const propertyName: nsAString; _retval: nsAString); safecall;
    procedure GetPropertyPriority(const propertyName: nsAString; _retval: nsAString); safecall;
    procedure SetProperty(const propertyName: nsAString; const value: nsAString; const priority: nsAString); safecall;
    function GetLength: PRUint32; safecall;
    property Length: PRUint32 read GetLength;
    procedure Item(index: PRUint32; _retval: nsAString); safecall;
    function GetParentRule: nsIDOMCSSRule; safecall;
    property ParentRule: nsIDOMCSSRule read GetParentRule;
  end;

  nsIDOMStyleSheet = interface(nsISupports)
  ['{a6cf9080-15b3-11d2-932e-00805f8add32}']
    procedure GetType(aType: nsAString); safecall;
    function GetDisabled: PRBool; safecall;
    procedure SetDisabled(aDisabled: PRBool); safecall;
    property Disabled: PRBool read GetDisabled write SetDisabled;
    function GetOwnerNode: nsIDOMNode; safecall;
    property OwnerNode: nsIDOMNode read GetOwnerNode;
    function GetParentStyleSheet: nsIDOMStyleSheet; safecall;
    property ParentStyleSheet: nsIDOMStyleSheet read GetParentStyleSheet;
    procedure GetHref(aHref: nsAString); safecall;
    procedure GetTitle(aTitle: nsAString); safecall;
    function GetMedia: nsIDOMMediaList; safecall;
    property Media: nsIDOMMediaList read GetMedia;
  end;

  nsIDOMCSSStyleSheet = interface(nsIDOMStyleSheet)
  ['{a6cf90c2-15b3-11d2-932e-00805f8add32}']
    function GetOwnerRule: nsIDOMCSSRule; safecall;
    property OwnerRule: nsIDOMCSSRule read GetOwnerRule;
    function GetCssRules: nsIDOMCSSRuleList; safecall;
    property CssRules: nsIDOMCSSRuleList read GetCssRules;
    function InsertRule(const rule: nsAString; index: PRUint32): PRUint32; safecall;
    procedure DeleteRule(index: PRUint32); safecall;
  end;

  nsIDOMCSSValueList = interface(nsIDOMCSSValue)
  ['{8f09fa84-39b9-4dca-9b2f-db0eeb186286}']
    function GetLength: PRUint32; safecall;
    property Length: PRUint32 read GetLength;
    function Item(index: PRUint32): nsIDOMCSSValue; safecall;
  end;

  nsIDOMEvent = interface(nsISupports)
  ['{a66b7b80-ff46-bd97-0080-5f8ae38add32}']
    procedure GetType(aType: nsAString); safecall;
    function GetTarget: nsIDOMEventTarget; safecall;
    property Target: nsIDOMEventTarget read GetTarget;
    function GetCurrentTarget: nsIDOMEventTarget; safecall;
    property CurrentTarget: nsIDOMEventTarget read GetCurrentTarget;
    function GetEventPhase: PRUint16; safecall;
    property EventPhase: PRUint16 read GetEventPhase;
    function GetBubbles: PRBool; safecall;
    property Bubbles: PRBool read GetBubbles;
    function GetCancelable: PRBool; safecall;
    property Cancelable: PRBool read GetCancelable;
    function GetTimeStamp: DOMTimeStamp; safecall;
    property TimeStamp: DOMTimeStamp read GetTimeStamp;
    procedure StopPropagation; safecall;
    procedure PreventDefault; safecall;
    procedure InitEvent(const eventTypeArg: nsAString; canBubbleArg: PRBool; cancelableArg: PRBool); safecall;
  end;

  nsIDOMCustomEvent = interface(nsIDOMEvent)
  ['{55c7af7b-1a64-40bf-87eb-2c2cbee0491b}']
    procedure SetCurrentTarget(target: nsIDOMNode); safecall;
    procedure SetEventPhase(phase: PRUint16); safecall;
  end;

  nsIDOMDocument = interface(nsIDOMNode)
  ['{a6cf9075-15b3-11d2-932e-00805f8add32}']
    function GetDoctype: nsIDOMDocumentType; safecall;
    property Doctype: nsIDOMDocumentType read GetDoctype;
    function GetImplementation: nsIDOMDOMImplementation; safecall;
    property _Implementation: nsIDOMDOMImplementation read GetImplementation;
    function GetDocumentElement: nsIDOMElement; safecall;
    property DocumentElement: nsIDOMElement read GetDocumentElement;
    function CreateElement(const tagName: nsAString): nsIDOMElement; safecall;
    function CreateDocumentFragment: nsIDOMDocumentFragment; safecall;
    function CreateTextNode(const data: nsAString): nsIDOMText; safecall;
    function CreateComment(const data: nsAString): nsIDOMComment; safecall;
    function CreateCDATASection(const data: nsAString): nsIDOMCDATASection; safecall;
    function CreateProcessingInstruction(const target: nsAString; const data: nsAString): nsIDOMProcessingInstruction; safecall;
    function CreateAttribute(const name: nsAString): nsIDOMAttr; safecall;
    function CreateEntityReference(const name: nsAString): nsIDOMEntityReference; safecall;
    function GetElementsByTagName(const tagname: nsAString): nsIDOMNodeList; safecall;
    function ImportNode(importedNode: nsIDOMNode; deep: PRBool): nsIDOMNode; safecall;
    function CreateElementNS(const namespaceURI: nsAString; const qualifiedName: nsAString): nsIDOMElement; safecall;
    function CreateAttributeNS(const namespaceURI: nsAString; const qualifiedName: nsAString): nsIDOMAttr; safecall;
    function GetElementsByTagNameNS(const namespaceURI: nsAString; const localName: nsAString): nsIDOMNodeList; safecall;
    function GetElementById(const elementId: nsAString): nsIDOMElement; safecall;
  end;

  nsIDOMDocumentEvent = interface(nsISupports)
  ['{46b91d66-28e2-11d4-ab1e-0010830123b4}']
    function CreateEvent(const eventType: nsAString): nsIDOMEvent; safecall;
  end;

  nsIDOMDocumentFragment = interface(nsIDOMNode)
  ['{a6cf9076-15b3-11d2-932e-00805f8add32}']
  end;

  nsIDOMDocumentRange = interface(nsISupports)
  ['{7b9badc6-c9bc-447a-8670-dbd195aed24b}']
    function CreateRange: nsIDOMRange; safecall;
  end;

  nsIDOMDocumentStyle = interface(nsISupports)
  ['{3d9f4973-dd2e-48f5-b5f7-2634e09eadd9}']
    function GetStyleSheets: nsIDOMStyleSheetList; safecall;
    property StyleSheets: nsIDOMStyleSheetList read GetStyleSheets;
  end;

  nsIDOMDocumentType = interface(nsIDOMNode)
  ['{a6cf9077-15b3-11d2-932e-00805f8add32}']
    procedure GetName(aName: nsAString); safecall;
    function GetEntities: nsIDOMNamedNodeMap; safecall;
    property Entities: nsIDOMNamedNodeMap read GetEntities;
    function GetNotations: nsIDOMNamedNodeMap; safecall;
    property Notations: nsIDOMNamedNodeMap read GetNotations;
    procedure GetPublicId(aPublicId: nsAString); safecall;
    procedure GetSystemId(aSystemId: nsAString); safecall;
    procedure GetInternalSubset(aInternalSubset: nsAString); safecall;
  end;

  nsIDOMDocumentView = interface(nsISupports)
  ['{1acdb2ba-1dd2-11b2-95bc-9542495d2569}']
    function GetDefaultView: nsIDOMAbstractView; safecall;
    property DefaultView: nsIDOMAbstractView read GetDefaultView;
  end;

  nsIDOMDOMException = interface(nsISupports)
  ['{a6cf910a-15b3-11d2-932e-00805f8add32}']
    function GetCode: PRUint32; safecall;
    property Code: PRUint32 read GetCode;
  end;

  nsIDOMDOMImplementation = interface(nsISupports)
  ['{a6cf9074-15b3-11d2-932e-00805f8add32}']
    function HasFeature(const feature: nsAString; const version: nsAString): PRBool; safecall;
    function CreateDocumentType(const qualifiedName: nsAString; const publicId: nsAString; const systemId: nsAString): nsIDOMDocumentType; safecall;
    function CreateDocument(const namespaceURI: nsAString; const qualifiedName: nsAString; doctype: nsIDOMDocumentType): nsIDOMDocument; safecall;
  end;

  nsIDOMElement = interface(nsIDOMNode)
  ['{a6cf9078-15b3-11d2-932e-00805f8add32}']
    procedure GetTagName(aTagName: nsAString); safecall;
    procedure GetAttribute(const name: nsAString; _retval: nsAString); safecall;
    procedure SetAttribute(const name: nsAString; const value: nsAString); safecall;
    procedure RemoveAttribute(const name: nsAString); safecall;
    function GetAttributeNode(const name: nsAString): nsIDOMAttr; safecall;
    function SetAttributeNode(newAttr: nsIDOMAttr): nsIDOMAttr; safecall;
    function RemoveAttributeNode(oldAttr: nsIDOMAttr): nsIDOMAttr; safecall;
    function GetElementsByTagName(const name: nsAString): nsIDOMNodeList; safecall;
    procedure GetAttributeNS(const namespaceURI: nsAString; const localName: nsAString; _retval: nsAString); safecall;
    procedure SetAttributeNS(const namespaceURI: nsAString; const qualifiedName: nsAString; const value: nsAString); safecall;
    procedure RemoveAttributeNS(const namespaceURI: nsAString; const localName: nsAString); safecall;
    function GetAttributeNodeNS(const namespaceURI: nsAString; const localName: nsAString): nsIDOMAttr; safecall;
    function SetAttributeNodeNS(newAttr: nsIDOMAttr): nsIDOMAttr; safecall;
    function GetElementsByTagNameNS(const namespaceURI: nsAString; const localName: nsAString): nsIDOMNodeList; safecall;
    function HasAttribute(const name: nsAString): PRBool; safecall;
    function HasAttributeNS(const namespaceURI: nsAString; const localName: nsAString): PRBool; safecall;
  end;

  nsIDOMElementCSSInlineStyle = interface(nsISupports)
  ['{99715845-95fc-4a56-aa53-214b65c26e22}']
    function GetStyle: nsIDOMCSSStyleDeclaration; safecall;
    property Style: nsIDOMCSSStyleDeclaration read GetStyle;
  end;

  nsIDOMEntity = interface(nsIDOMNode)
  ['{a6cf9079-15b3-11d2-932e-00805f8add32}']
    procedure GetPublicId(aPublicId: nsAString); safecall;
    procedure GetSystemId(aSystemId: nsAString); safecall;
    procedure GetNotationName(aNotationName: nsAString); safecall;
  end;

  nsIDOMEntityReference = interface(nsIDOMNode)
  ['{a6cf907a-15b3-11d2-932e-00805f8add32}']
  end;

  nsIDOMEventGroup = interface(nsISupports)
  ['{33347bee-6620-4841-8152-36091ae80c7e}']
    function IsSameEventGroup(other: nsIDOMEventGroup): PRBool; safecall;
  end;

  nsIDOMEventListener = interface(nsISupports)
  ['{df31c120-ded6-11d1-bd85-00805f8ae3f4}']
    procedure HandleEvent(event: nsIDOMEvent); safecall;
  end;

  nsIDOMEventTarget = interface(nsISupports)
  ['{1c773b30-d1cf-11d2-bd95-00805f8ae3f4}']
    procedure AddEventListener(const _type: nsAString; listener: nsIDOMEventListener; useCapture: PRBool); safecall;
    procedure RemoveEventListener(const _type: nsAString; listener: nsIDOMEventListener; useCapture: PRBool); safecall;
    function DispatchEvent(evt: nsIDOMEvent): PRBool; safecall;
  end;

  nsIDOMHTMLElement = interface(nsIDOMElement)
  ['{a6cf9085-15b3-11d2-932e-00805f8add32}']
    procedure GetId(aId: nsAString); safecall;
    procedure SetId(const aId: nsAString); safecall;
    procedure GetTitle(aTitle: nsAString); safecall;
    procedure SetTitle(const aTitle: nsAString); safecall;
    procedure GetLang(aLang: nsAString); safecall;
    procedure SetLang(const aLang: nsAString); safecall;
    procedure GetDir(aDir: nsAString); safecall;
    procedure SetDir(const aDir: nsAString); safecall;
    procedure GetClassName(aClassName: nsAString); safecall;
    procedure SetClassName(const aClassName: nsAString); safecall;
  end;

  nsIDOMHTMLAnchorElement = interface(nsIDOMHTMLElement)
  ['{a6cf90aa-15b3-11d2-932e-00805f8add32}']
    procedure GetAccessKey(aAccessKey: nsAString); safecall;
    procedure SetAccessKey(const aAccessKey: nsAString); safecall;
    procedure GetCharset(aCharset: nsAString); safecall;
    procedure SetCharset(const aCharset: nsAString); safecall;
    procedure GetCoords(aCoords: nsAString); safecall;
    procedure SetCoords(const aCoords: nsAString); safecall;
    procedure GetHref(aHref: nsAString); safecall;
    procedure SetHref(const aHref: nsAString); safecall;
    procedure GetHreflang(aHreflang: nsAString); safecall;
    procedure SetHreflang(const aHreflang: nsAString); safecall;
    procedure GetName(aName: nsAString); safecall;
    procedure SetName(const aName: nsAString); safecall;
    procedure GetRel(aRel: nsAString); safecall;
    procedure SetRel(const aRel: nsAString); safecall;
    procedure GetRev(aRev: nsAString); safecall;
    procedure SetRev(const aRev: nsAString); safecall;
    procedure GetShape(aShape: nsAString); safecall;
    procedure SetShape(const aShape: nsAString); safecall;
    function GetTabIndex: PRInt32; safecall;
    procedure SetTabIndex(aTabIndex: PRInt32); safecall;
    property TabIndex: PRInt32 read GetTabIndex write SetTabIndex;
    procedure GetTarget(aTarget: nsAString); safecall;
    procedure SetTarget(const aTarget: nsAString); safecall;
    procedure GetType(aType: nsAString); safecall;
    procedure SetType(const aType: nsAString); safecall;
    procedure Blur; safecall;
    procedure Focus; safecall;
  end;

  nsIDOMHTMLAppletElement = interface(nsIDOMHTMLElement)
  ['{a6cf90ae-15b3-11d2-932e-00805f8add32}']
    procedure GetAlign(aAlign: nsAString); safecall;
    procedure SetAlign(const aAlign: nsAString); safecall;
    procedure GetAlt(aAlt: nsAString); safecall;
    procedure SetAlt(const aAlt: nsAString); safecall;
    procedure GetArchive(aArchive: nsAString); safecall;
    procedure SetArchive(const aArchive: nsAString); safecall;
    procedure GetCode(aCode: nsAString); safecall;
    procedure SetCode(const aCode: nsAString); safecall;
    procedure GetCodeBase(aCodeBase: nsAString); safecall;
    procedure SetCodeBase(const aCodeBase: nsAString); safecall;
    procedure GetHeight(aHeight: nsAString); safecall;
    procedure SetHeight(const aHeight: nsAString); safecall;
    function GetHspace: PRInt32; safecall;
    procedure SetHspace(aHspace: PRInt32); safecall;
    property Hspace: PRInt32 read GetHspace write SetHspace;
    procedure GetName(aName: nsAString); safecall;
    procedure SetName(const aName: nsAString); safecall;
    procedure GetObject(aObject: nsAString); safecall;
    procedure SetObject(const aObject: nsAString); safecall;
    function GetVspace: PRInt32; safecall;
    procedure SetVspace(aVspace: PRInt32); safecall;
    property Vspace: PRInt32 read GetVspace write SetVspace;
    procedure GetWidth(aWidth: nsAString); safecall;
    procedure SetWidth(const aWidth: nsAString); safecall;
  end;

  nsIDOMHTMLAreaElement = interface(nsIDOMHTMLElement)
  ['{a6cf90b0-15b3-11d2-932e-00805f8add32}']
    procedure GetAccessKey(aAccessKey: nsAString); safecall;
    procedure SetAccessKey(const aAccessKey: nsAString); safecall;
    procedure GetAlt(aAlt: nsAString); safecall;
    procedure SetAlt(const aAlt: nsAString); safecall;
    procedure GetCoords(aCoords: nsAString); safecall;
    procedure SetCoords(const aCoords: nsAString); safecall;
    procedure GetHref(aHref: nsAString); safecall;
    procedure SetHref(const aHref: nsAString); safecall;
    function GetNoHref: PRBool; safecall;
    procedure SetNoHref(aNoHref: PRBool); safecall;
    property NoHref: PRBool read GetNoHref write SetNoHref;
    procedure GetShape(aShape: nsAString); safecall;
    procedure SetShape(const aShape: nsAString); safecall;
    function GetTabIndex: PRInt32; safecall;
    procedure SetTabIndex(aTabIndex: PRInt32); safecall;
    property TabIndex: PRInt32 read GetTabIndex write SetTabIndex;
    procedure GetTarget(aTarget: nsAString); safecall;
    procedure SetTarget(const aTarget: nsAString); safecall;
  end;

  nsIDOMHTMLBaseElement = interface(nsIDOMHTMLElement)
  ['{a6cf908b-15b3-11d2-932e-00805f8add32}']
    procedure GetHref(aHref: nsAString); safecall;
    procedure SetHref(const aHref: nsAString); safecall;
    procedure GetTarget(aTarget: nsAString); safecall;
    procedure SetTarget(const aTarget: nsAString); safecall;
  end;

  nsIDOMHTMLBaseFontElement = interface(nsIDOMHTMLElement)
  ['{a6cf90a6-15b3-11d2-932e-00805f8add32}']
    procedure GetColor(aColor: nsAString); safecall;
    procedure SetColor(const aColor: nsAString); safecall;
    procedure GetFace(aFace: nsAString); safecall;
    procedure SetFace(const aFace: nsAString); safecall;
    function GetSize: PRInt32; safecall;
    procedure SetSize(aSize: PRInt32); safecall;
    property Size: PRInt32 read GetSize write SetSize;
  end;

  nsIDOMHTMLBodyElement = interface(nsIDOMHTMLElement)
  ['{a6cf908e-15b3-11d2-932e-00805f8add32}']
    procedure GetALink(aALink: nsAString); safecall;
    procedure SetALink(const aALink: nsAString); safecall;
    procedure GetBackground(aBackground: nsAString); safecall;
    procedure SetBackground(const aBackground: nsAString); safecall;
    procedure GetBgColor(aBgColor: nsAString); safecall;
    procedure SetBgColor(const aBgColor: nsAString); safecall;
    procedure GetLink(aLink: nsAString); safecall;
    procedure SetLink(const aLink: nsAString); safecall;
    procedure GetText(aText: nsAString); safecall;
    procedure SetText(const aText: nsAString); safecall;
    procedure GetVLink(aVLink: nsAString); safecall;
    procedure SetVLink(const aVLink: nsAString); safecall;
  end;

  nsIDOMHTMLBRElement = interface(nsIDOMHTMLElement)
  ['{a6cf90a5-15b3-11d2-932e-00805f8add32}']
    procedure GetClear(aClear: nsAString); safecall;
    procedure SetClear(const aClear: nsAString); safecall;
  end;

  nsIDOMHTMLButtonElement = interface(nsIDOMHTMLElement)
  ['{a6cf9095-15b3-11d2-932e-00805f8add32}']
    function GetForm: nsIDOMHTMLFormElement; safecall;
    property Form: nsIDOMHTMLFormElement read GetForm;
    procedure GetAccessKey(aAccessKey: nsAString); safecall;
    procedure SetAccessKey(const aAccessKey: nsAString); safecall;
    function GetDisabled: PRBool; safecall;
    procedure SetDisabled(aDisabled: PRBool); safecall;
    property Disabled: PRBool read GetDisabled write SetDisabled;
    procedure GetName(aName: nsAString); safecall;
    procedure SetName(const aName: nsAString); safecall;
    function GetTabIndex: PRInt32; safecall;
    procedure SetTabIndex(aTabIndex: PRInt32); safecall;
    property TabIndex: PRInt32 read GetTabIndex write SetTabIndex;
    procedure GetType(aType: nsAString); safecall;
    procedure GetValue(aValue: nsAString); safecall;
    procedure SetValue(const aValue: nsAString); safecall;
  end;

  nsIDOMHTMLCollection = interface(nsISupports)
  ['{a6cf9083-15b3-11d2-932e-00805f8add32}']
    function GetLength: PRUint32; safecall;
    property Length: PRUint32 read GetLength;
    function Item(index: PRUint32): nsIDOMNode; safecall;
    function NamedItem(const name: nsAString): nsIDOMNode; safecall;
  end;

  nsIDOMHTMLDirectoryElement = interface(nsIDOMHTMLElement)
  ['{a6cf909c-15b3-11d2-932e-00805f8add32}']
    function GetCompact: PRBool; safecall;
    procedure SetCompact(aCompact: PRBool); safecall;
    property Compact: PRBool read GetCompact write SetCompact;
  end;

  nsIDOMHTMLDivElement = interface(nsIDOMHTMLElement)
  ['{a6cf90a0-15b3-11d2-932e-00805f8add32}']
    procedure GetAlign(aAlign: nsAString); safecall;
    procedure SetAlign(const aAlign: nsAString); safecall;
  end;

  nsIDOMHTMLDListElement = interface(nsIDOMHTMLElement)
  ['{a6cf909b-15b3-11d2-932e-00805f8add32}']
    function GetCompact: PRBool; safecall;
    procedure SetCompact(aCompact: PRBool); safecall;
    property Compact: PRBool read GetCompact write SetCompact;
  end;

  nsIDOMHTMLDocument = interface(nsIDOMDocument)
  ['{a6cf9084-15b3-11d2-932e-00805f8add32}']
    procedure GetTitle(aTitle: nsAString); safecall;
    procedure SetTitle(const aTitle: nsAString); safecall;
    procedure GetReferrer(aReferrer: nsAString); safecall;
    procedure GetDomain(aDomain: nsAString); safecall;
    procedure GetURL(aURL: nsAString); safecall;
    function GetBody: nsIDOMHTMLElement; safecall;
    procedure SetBody(aBody: nsIDOMHTMLElement); safecall;
    property Body: nsIDOMHTMLElement read GetBody write SetBody;
    function GetImages: nsIDOMHTMLCollection; safecall;
    property Images: nsIDOMHTMLCollection read GetImages;
    function GetApplets: nsIDOMHTMLCollection; safecall;
    property Applets: nsIDOMHTMLCollection read GetApplets;
    function GetLinks: nsIDOMHTMLCollection; safecall;
    property Links: nsIDOMHTMLCollection read GetLinks;
    function GetForms: nsIDOMHTMLCollection; safecall;
    property Forms: nsIDOMHTMLCollection read GetForms;
    function GetAnchors: nsIDOMHTMLCollection; safecall;
    property Anchors: nsIDOMHTMLCollection read GetAnchors;
    procedure GetCookie(aCookie: nsAString); safecall;
    procedure SetCookie(const aCookie: nsAString); safecall;
    procedure Open; safecall;
    procedure Close; safecall;
    procedure Write(const text: nsAString); safecall;
    procedure Writeln(const text: nsAString); safecall;
    function GetElementsByName(const elementName: nsAString): nsIDOMNodeList; safecall;
  end;

  nsIDOMHTMLEmbedElement = interface(nsIDOMHTMLElement)
  ['{123f90ab-15b3-11d2-456e-00805f8add32}']
    procedure GetAlign(aAlign: nsAString); safecall;
    procedure SetAlign(const aAlign: nsAString); safecall;
    procedure GetHeight(aHeight: nsAString); safecall;
    procedure SetHeight(const aHeight: nsAString); safecall;
    procedure GetName(aName: nsAString); safecall;
    procedure SetName(const aName: nsAString); safecall;
    procedure GetSrc(aSrc: nsAString); safecall;
    procedure SetSrc(const aSrc: nsAString); safecall;
    procedure GetType(aType: nsAString); safecall;
    procedure SetType(const aType: nsAString); safecall;
    procedure GetWidth(aWidth: nsAString); safecall;
    procedure SetWidth(const aWidth: nsAString); safecall;
  end;

  nsIDOMHTMLFieldSetElement = interface(nsIDOMHTMLElement)
  ['{a6cf9097-15b3-11d2-932e-00805f8add32}']
    function GetForm: nsIDOMHTMLFormElement; safecall;
    property Form: nsIDOMHTMLFormElement read GetForm;
  end;

  nsIDOMHTMLFontElement = interface(nsIDOMHTMLElement)
  ['{a6cf90a7-15b3-11d2-932e-00805f8add32}']
    procedure GetColor(aColor: nsAString); safecall;
    procedure SetColor(const aColor: nsAString); safecall;
    procedure GetFace(aFace: nsAString); safecall;
    procedure SetFace(const aFace: nsAString); safecall;
    procedure GetSize(aSize: nsAString); safecall;
    procedure SetSize(const aSize: nsAString); safecall;
  end;

  nsIDOMHTMLFormElement = interface(nsIDOMHTMLElement)
  ['{a6cf908f-15b3-11d2-932e-00805f8add32}']
    function GetElements: nsIDOMHTMLCollection; safecall;
    property Elements: nsIDOMHTMLCollection read GetElements;
    function GetLength: PRInt32; safecall;
    property Length: PRInt32 read GetLength;
    procedure GetName(aName: nsAString); safecall;
    procedure SetName(const aName: nsAString); safecall;
    procedure GetAcceptCharset(aAcceptCharset: nsAString); safecall;
    procedure SetAcceptCharset(const aAcceptCharset: nsAString); safecall;
    procedure GetAction(aAction: nsAString); safecall;
    procedure SetAction(const aAction: nsAString); safecall;
    procedure GetEnctype(aEnctype: nsAString); safecall;
    procedure SetEnctype(const aEnctype: nsAString); safecall;
    procedure GetMethod(aMethod: nsAString); safecall;
    procedure SetMethod(const aMethod: nsAString); safecall;
    procedure GetTarget(aTarget: nsAString); safecall;
    procedure SetTarget(const aTarget: nsAString); safecall;
    procedure Submit; safecall;
    procedure Reset; safecall;
  end;

  nsIDOMHTMLFrameElement = interface(nsIDOMHTMLElement)
  ['{a6cf90b9-15b3-11d2-932e-00805f8add32}']
    procedure GetFrameBorder(aFrameBorder: nsAString); safecall;
    procedure SetFrameBorder(const aFrameBorder: nsAString); safecall;
    procedure GetLongDesc(aLongDesc: nsAString); safecall;
    procedure SetLongDesc(const aLongDesc: nsAString); safecall;
    procedure GetMarginHeight(aMarginHeight: nsAString); safecall;
    procedure SetMarginHeight(const aMarginHeight: nsAString); safecall;
    procedure GetMarginWidth(aMarginWidth: nsAString); safecall;
    procedure SetMarginWidth(const aMarginWidth: nsAString); safecall;
    procedure GetName(aName: nsAString); safecall;
    procedure SetName(const aName: nsAString); safecall;
    function GetNoResize: PRBool; safecall;
    procedure SetNoResize(aNoResize: PRBool); safecall;
    property NoResize: PRBool read GetNoResize write SetNoResize;
    procedure GetScrolling(aScrolling: nsAString); safecall;
    procedure SetScrolling(const aScrolling: nsAString); safecall;
    procedure GetSrc(aSrc: nsAString); safecall;
    procedure SetSrc(const aSrc: nsAString); safecall;
    function GetContentDocument: nsIDOMDocument; safecall;
    property ContentDocument: nsIDOMDocument read GetContentDocument;
  end;

  nsIDOMHTMLFrameSetElement = interface(nsIDOMHTMLElement)
  ['{a6cf90b8-15b3-11d2-932e-00805f8add32}']
    procedure GetCols(aCols: nsAString); safecall;
    procedure SetCols(const aCols: nsAString); safecall;
    procedure GetRows(aRows: nsAString); safecall;
    procedure SetRows(const aRows: nsAString); safecall;
  end;

  nsIDOMHTMLHeadElement = interface(nsIDOMHTMLElement)
  ['{a6cf9087-15b3-11d2-932e-00805f8add32}']
    procedure GetProfile(aProfile: nsAString); safecall;
    procedure SetProfile(const aProfile: nsAString); safecall;
  end;

  nsIDOMHTMLHeadingElement = interface(nsIDOMHTMLElement)
  ['{a6cf90a2-15b3-11d2-932e-00805f8add32}']
    procedure GetAlign(aAlign: nsAString); safecall;
    procedure SetAlign(const aAlign: nsAString); safecall;
  end;

  nsIDOMHTMLHRElement = interface(nsIDOMHTMLElement)
  ['{a6cf90a8-15b3-11d2-932e-00805f8add32}']
    procedure GetAlign(aAlign: nsAString); safecall;
    procedure SetAlign(const aAlign: nsAString); safecall;
    function GetNoShade: PRBool; safecall;
    procedure SetNoShade(aNoShade: PRBool); safecall;
    property NoShade: PRBool read GetNoShade write SetNoShade;
    procedure GetSize(aSize: nsAString); safecall;
    procedure SetSize(const aSize: nsAString); safecall;
    procedure GetWidth(aWidth: nsAString); safecall;
    procedure SetWidth(const aWidth: nsAString); safecall;
  end;

  nsIDOMHTMLHtmlElement = interface(nsIDOMHTMLElement)
  ['{a6cf9086-15b3-11d2-932e-00805f8add32}']
    procedure GetVersion(aVersion: nsAString); safecall;
    procedure SetVersion(const aVersion: nsAString); safecall;
  end;

  nsIDOMHTMLIFrameElement = interface(nsIDOMHTMLElement)
  ['{a6cf90ba-15b3-11d2-932e-00805f8add32}']
    procedure GetAlign(aAlign: nsAString); safecall;
    procedure SetAlign(const aAlign: nsAString); safecall;
    procedure GetFrameBorder(aFrameBorder: nsAString); safecall;
    procedure SetFrameBorder(const aFrameBorder: nsAString); safecall;
    procedure GetHeight(aHeight: nsAString); safecall;
    procedure SetHeight(const aHeight: nsAString); safecall;
    procedure GetLongDesc(aLongDesc: nsAString); safecall;
    procedure SetLongDesc(const aLongDesc: nsAString); safecall;
    procedure GetMarginHeight(aMarginHeight: nsAString); safecall;
    procedure SetMarginHeight(const aMarginHeight: nsAString); safecall;
    procedure GetMarginWidth(aMarginWidth: nsAString); safecall;
    procedure SetMarginWidth(const aMarginWidth: nsAString); safecall;
    procedure GetName(aName: nsAString); safecall;
    procedure SetName(const aName: nsAString); safecall;
    procedure GetScrolling(aScrolling: nsAString); safecall;
    procedure SetScrolling(const aScrolling: nsAString); safecall;
    procedure GetSrc(aSrc: nsAString); safecall;
    procedure SetSrc(const aSrc: nsAString); safecall;
    procedure GetWidth(aWidth: nsAString); safecall;
    procedure SetWidth(const aWidth: nsAString); safecall;
    function GetContentDocument: nsIDOMDocument; safecall;
    property ContentDocument: nsIDOMDocument read GetContentDocument;
  end;

  nsIDOMHTMLImageElement = interface(nsIDOMHTMLElement)
  ['{a6cf90ab-15b3-11d2-932e-00805f8add32}']
    procedure GetName(aName: nsAString); safecall;
    procedure SetName(const aName: nsAString); safecall;
    procedure GetAlign(aAlign: nsAString); safecall;
    procedure SetAlign(const aAlign: nsAString); safecall;
    procedure GetAlt(aAlt: nsAString); safecall;
    procedure SetAlt(const aAlt: nsAString); safecall;
    procedure GetBorder(aBorder: nsAString); safecall;
    procedure SetBorder(const aBorder: nsAString); safecall;
    function GetHeight: PRInt32; safecall;
    procedure SetHeight(aHeight: PRInt32); safecall;
    property Height: PRInt32 read GetHeight write SetHeight;
    function GetHspace: PRInt32; safecall;
    procedure SetHspace(aHspace: PRInt32); safecall;
    property Hspace: PRInt32 read GetHspace write SetHspace;
    function GetIsMap: PRBool; safecall;
    procedure SetIsMap(aIsMap: PRBool); safecall;
    property IsMap: PRBool read GetIsMap write SetIsMap;
    procedure GetLongDesc(aLongDesc: nsAString); safecall;
    procedure SetLongDesc(const aLongDesc: nsAString); safecall;
    procedure GetSrc(aSrc: nsAString); safecall;
    procedure SetSrc(const aSrc: nsAString); safecall;
    procedure GetUseMap(aUseMap: nsAString); safecall;
    procedure SetUseMap(const aUseMap: nsAString); safecall;
    function GetVspace: PRInt32; safecall;
    procedure SetVspace(aVspace: PRInt32); safecall;
    property Vspace: PRInt32 read GetVspace write SetVspace;
    function GetWidth: PRInt32; safecall;
    procedure SetWidth(aWidth: PRInt32); safecall;
    property Width: PRInt32 read GetWidth write SetWidth;
  end;

  nsIDOMHTMLInputElement = interface(nsIDOMHTMLElement)
  ['{a6cf9093-15b3-11d2-932e-00805f8add32}']
    procedure GetDefaultValue(aDefaultValue: nsAString); safecall;
    procedure SetDefaultValue(const aDefaultValue: nsAString); safecall;
    function GetDefaultChecked: PRBool; safecall;
    procedure SetDefaultChecked(aDefaultChecked: PRBool); safecall;
    property DefaultChecked: PRBool read GetDefaultChecked write SetDefaultChecked;
    function GetForm: nsIDOMHTMLFormElement; safecall;
    property Form: nsIDOMHTMLFormElement read GetForm;
    procedure GetAccept(aAccept: nsAString); safecall;
    procedure SetAccept(const aAccept: nsAString); safecall;
    procedure GetAccessKey(aAccessKey: nsAString); safecall;
    procedure SetAccessKey(const aAccessKey: nsAString); safecall;
    procedure GetAlign(aAlign: nsAString); safecall;
    procedure SetAlign(const aAlign: nsAString); safecall;
    procedure GetAlt(aAlt: nsAString); safecall;
    procedure SetAlt(const aAlt: nsAString); safecall;
    function GetChecked: PRBool; safecall;
    procedure SetChecked(aChecked: PRBool); safecall;
    property Checked: PRBool read GetChecked write SetChecked;
    function GetDisabled: PRBool; safecall;
    procedure SetDisabled(aDisabled: PRBool); safecall;
    property Disabled: PRBool read GetDisabled write SetDisabled;
    function GetMaxLength: PRInt32; safecall;
    procedure SetMaxLength(aMaxLength: PRInt32); safecall;
    property MaxLength: PRInt32 read GetMaxLength write SetMaxLength;
    procedure GetName(aName: nsAString); safecall;
    procedure SetName(const aName: nsAString); safecall;
    function GetReadOnly: PRBool; safecall;
    procedure SetReadOnly(aReadOnly: PRBool); safecall;
    property ReadOnly: PRBool read GetReadOnly write SetReadOnly;
    function GetSize: PRUint32; safecall;
    procedure SetSize(aSize: PRUint32); safecall;
    property Size: PRUint32 read GetSize write SetSize;
    procedure GetSrc(aSrc: nsAString); safecall;
    procedure SetSrc(const aSrc: nsAString); safecall;
    function GetTabIndex: PRInt32; safecall;
    procedure SetTabIndex(aTabIndex: PRInt32); safecall;
    property TabIndex: PRInt32 read GetTabIndex write SetTabIndex;
    procedure GetType(aType: nsAString); safecall;
    procedure SetType(const aType: nsAString); safecall;
    procedure GetUseMap(aUseMap: nsAString); safecall;
    procedure SetUseMap(const aUseMap: nsAString); safecall;
    procedure GetValue(aValue: nsAString); safecall;
    procedure SetValue(const aValue: nsAString); safecall;
    procedure Blur; safecall;
    procedure Focus; safecall;
    procedure Select; safecall;
    procedure Click; safecall;
  end;

  nsIDOMHTMLIsIndexElement = interface(nsIDOMHTMLElement)
  ['{a6cf908c-15b3-11d2-932e-00805f8add32}']
    function GetForm: nsIDOMHTMLFormElement; safecall;
    property Form: nsIDOMHTMLFormElement read GetForm;
    procedure GetPrompt(aPrompt: nsAString); safecall;
    procedure SetPrompt(const aPrompt: nsAString); safecall;
  end;

  nsIDOMHTMLLabelElement = interface(nsIDOMHTMLElement)
  ['{a6cf9096-15b3-11d2-932e-00805f8add32}']
    function GetForm: nsIDOMHTMLFormElement; safecall;
    property Form: nsIDOMHTMLFormElement read GetForm;
    procedure GetAccessKey(aAccessKey: nsAString); safecall;
    procedure SetAccessKey(const aAccessKey: nsAString); safecall;
    procedure GetHtmlFor(aHtmlFor: nsAString); safecall;
    procedure SetHtmlFor(const aHtmlFor: nsAString); safecall;
  end;

  nsIDOMHTMLLegendElement = interface(nsIDOMHTMLElement)
  ['{a6cf9098-15b3-11d2-932e-00805f8add32}']
    function GetForm: nsIDOMHTMLFormElement; safecall;
    property Form: nsIDOMHTMLFormElement read GetForm;
    procedure GetAccessKey(aAccessKey: nsAString); safecall;
    procedure SetAccessKey(const aAccessKey: nsAString); safecall;
    procedure GetAlign(aAlign: nsAString); safecall;
    procedure SetAlign(const aAlign: nsAString); safecall;
  end;

  nsIDOMHTMLLIElement = interface(nsIDOMHTMLElement)
  ['{a6cf909e-15b3-11d2-932e-00805f8add32}']
    procedure GetType(aType: nsAString); safecall;
    procedure SetType(const aType: nsAString); safecall;
    function GetValue: PRInt32; safecall;
    procedure SetValue(aValue: PRInt32); safecall;
    property Value: PRInt32 read GetValue write SetValue;
  end;

  nsIDOMHTMLLinkElement = interface(nsIDOMHTMLElement)
  ['{a6cf9088-15b3-11d2-932e-00805f8add32}']
    function GetDisabled: PRBool; safecall;
    procedure SetDisabled(aDisabled: PRBool); safecall;
    property Disabled: PRBool read GetDisabled write SetDisabled;
    procedure GetCharset(aCharset: nsAString); safecall;
    procedure SetCharset(const aCharset: nsAString); safecall;
    procedure GetHref(aHref: nsAString); safecall;
    procedure SetHref(const aHref: nsAString); safecall;
    procedure GetHreflang(aHreflang: nsAString); safecall;
    procedure SetHreflang(const aHreflang: nsAString); safecall;
    procedure GetMedia(aMedia: nsAString); safecall;
    procedure SetMedia(const aMedia: nsAString); safecall;
    procedure GetRel(aRel: nsAString); safecall;
    procedure SetRel(const aRel: nsAString); safecall;
    procedure GetRev(aRev: nsAString); safecall;
    procedure SetRev(const aRev: nsAString); safecall;
    procedure GetTarget(aTarget: nsAString); safecall;
    procedure SetTarget(const aTarget: nsAString); safecall;
    procedure GetType(aType: nsAString); safecall;
    procedure SetType(const aType: nsAString); safecall;
  end;

  nsIDOMHTMLMapElement = interface(nsIDOMHTMLElement)
  ['{a6cf90af-15b3-11d2-932e-00805f8add32}']
    function GetAreas: nsIDOMHTMLCollection; safecall;
    property Areas: nsIDOMHTMLCollection read GetAreas;
    procedure GetName(aName: nsAString); safecall;
    procedure SetName(const aName: nsAString); safecall;
  end;

  nsIDOMHTMLMenuElement = interface(nsIDOMHTMLElement)
  ['{a6cf909d-15b3-11d2-932e-00805f8add32}']
    function GetCompact: PRBool; safecall;
    procedure SetCompact(aCompact: PRBool); safecall;
    property Compact: PRBool read GetCompact write SetCompact;
  end;

  nsIDOMHTMLMetaElement = interface(nsIDOMHTMLElement)
  ['{a6cf908a-15b3-11d2-932e-00805f8add32}']
    procedure GetContent(aContent: nsAString); safecall;
    procedure SetContent(const aContent: nsAString); safecall;
    procedure GetHttpEquiv(aHttpEquiv: nsAString); safecall;
    procedure SetHttpEquiv(const aHttpEquiv: nsAString); safecall;
    procedure GetName(aName: nsAString); safecall;
    procedure SetName(const aName: nsAString); safecall;
    procedure GetScheme(aScheme: nsAString); safecall;
    procedure SetScheme(const aScheme: nsAString); safecall;
  end;

  nsIDOMHTMLModElement = interface(nsIDOMHTMLElement)
  ['{a6cf90a9-15b3-11d2-932e-00805f8add32}']
    procedure GetCite(aCite: nsAString); safecall;
    procedure SetCite(const aCite: nsAString); safecall;
    procedure GetDateTime(aDateTime: nsAString); safecall;
    procedure SetDateTime(const aDateTime: nsAString); safecall;
  end;

  nsIDOMHTMLObjectElement = interface(nsIDOMHTMLElement)
  ['{a6cf90ac-15b3-11d2-932e-00805f8add32}']
    function GetForm: nsIDOMHTMLFormElement; safecall;
    property Form: nsIDOMHTMLFormElement read GetForm;
    procedure GetCode(aCode: nsAString); safecall;
    procedure SetCode(const aCode: nsAString); safecall;
    procedure GetAlign(aAlign: nsAString); safecall;
    procedure SetAlign(const aAlign: nsAString); safecall;
    procedure GetArchive(aArchive: nsAString); safecall;
    procedure SetArchive(const aArchive: nsAString); safecall;
    procedure GetBorder(aBorder: nsAString); safecall;
    procedure SetBorder(const aBorder: nsAString); safecall;
    procedure GetCodeBase(aCodeBase: nsAString); safecall;
    procedure SetCodeBase(const aCodeBase: nsAString); safecall;
    procedure GetCodeType(aCodeType: nsAString); safecall;
    procedure SetCodeType(const aCodeType: nsAString); safecall;
    procedure GetData(aData: nsAString); safecall;
    procedure SetData(const aData: nsAString); safecall;
    function GetDeclare: PRBool; safecall;
    procedure SetDeclare(aDeclare: PRBool); safecall;
    property Declare: PRBool read GetDeclare write SetDeclare;
    procedure GetHeight(aHeight: nsAString); safecall;
    procedure SetHeight(const aHeight: nsAString); safecall;
    function GetHspace: PRInt32; safecall;
    procedure SetHspace(aHspace: PRInt32); safecall;
    property Hspace: PRInt32 read GetHspace write SetHspace;
    procedure GetName(aName: nsAString); safecall;
    procedure SetName(const aName: nsAString); safecall;
    procedure GetStandby(aStandby: nsAString); safecall;
    procedure SetStandby(const aStandby: nsAString); safecall;
    function GetTabIndex: PRInt32; safecall;
    procedure SetTabIndex(aTabIndex: PRInt32); safecall;
    property TabIndex: PRInt32 read GetTabIndex write SetTabIndex;
    procedure GetType(aType: nsAString); safecall;
    procedure SetType(const aType: nsAString); safecall;
    procedure GetUseMap(aUseMap: nsAString); safecall;
    procedure SetUseMap(const aUseMap: nsAString); safecall;
    function GetVspace: PRInt32; safecall;
    procedure SetVspace(aVspace: PRInt32); safecall;
    property Vspace: PRInt32 read GetVspace write SetVspace;
    procedure GetWidth(aWidth: nsAString); safecall;
    procedure SetWidth(const aWidth: nsAString); safecall;
    function GetContentDocument: nsIDOMDocument; safecall;
    property ContentDocument: nsIDOMDocument read GetContentDocument;
  end;

  nsIDOMHTMLOListElement = interface(nsIDOMHTMLElement)
  ['{a6cf909a-15b3-11d2-932e-00805f8add32}']
    function GetCompact: PRBool; safecall;
    procedure SetCompact(aCompact: PRBool); safecall;
    property Compact: PRBool read GetCompact write SetCompact;
    function GetStart: PRInt32; safecall;
    procedure SetStart(aStart: PRInt32); safecall;
    property Start: PRInt32 read GetStart write SetStart;
    procedure GetType(aType: nsAString); safecall;
    procedure SetType(const aType: nsAString); safecall;
  end;

  nsIDOMHTMLOptGroupElement = interface(nsIDOMHTMLElement)
  ['{a6cf9091-15b3-11d2-932e-00805f8add32}']
    function GetDisabled: PRBool; safecall;
    procedure SetDisabled(aDisabled: PRBool); safecall;
    property Disabled: PRBool read GetDisabled write SetDisabled;
    procedure GetLabel(aLabel: nsAString); safecall;
    procedure SetLabel(const aLabel: nsAString); safecall;
  end;

  nsIDOMHTMLOptionElement = interface(nsIDOMHTMLElement)
  ['{a6cf9092-15b3-11d2-932e-00805f8add32}']
    function GetForm: nsIDOMHTMLFormElement; safecall;
    property Form: nsIDOMHTMLFormElement read GetForm;
    function GetDefaultSelected: PRBool; safecall;
    procedure SetDefaultSelected(aDefaultSelected: PRBool); safecall;
    property DefaultSelected: PRBool read GetDefaultSelected write SetDefaultSelected;
    procedure GetText(aText: nsAString); safecall;
    function GetIndex: PRInt32; safecall;
    property Index: PRInt32 read GetIndex;
    function GetDisabled: PRBool; safecall;
    procedure SetDisabled(aDisabled: PRBool); safecall;
    property Disabled: PRBool read GetDisabled write SetDisabled;
    procedure GetLabel(aLabel: nsAString); safecall;
    procedure SetLabel(const aLabel: nsAString); safecall;
    function GetSelected: PRBool; safecall;
    procedure SetSelected(aSelected: PRBool); safecall;
    property Selected: PRBool read GetSelected write SetSelected;
    procedure GetValue(aValue: nsAString); safecall;
    procedure SetValue(const aValue: nsAString); safecall;
  end;

  nsIDOMHTMLOptionsCollection = interface(nsISupports)
  ['{bce0213c-f70f-488f-b93f-688acca55d63}']
    function GetLength: PRUint32; safecall;
    procedure SetLength(aLength: PRUint32); safecall;
    property Length: PRUint32 read GetLength write SetLength;
    function Item(index: PRUint32): nsIDOMNode; safecall;
    function NamedItem(const name: nsAString): nsIDOMNode; safecall;
  end;

  nsIDOMHTMLParagraphElement = interface(nsIDOMHTMLElement)
  ['{a6cf90a1-15b3-11d2-932e-00805f8add32}']
    procedure GetAlign(aAlign: nsAString); safecall;
    procedure SetAlign(const aAlign: nsAString); safecall;
  end;

  nsIDOMHTMLParamElement = interface(nsIDOMHTMLElement)
  ['{a6cf90ad-15b3-11d2-932e-00805f8add32}']
    procedure GetName(aName: nsAString); safecall;
    procedure SetName(const aName: nsAString); safecall;
    procedure GetType(aType: nsAString); safecall;
    procedure SetType(const aType: nsAString); safecall;
    procedure GetValue(aValue: nsAString); safecall;
    procedure SetValue(const aValue: nsAString); safecall;
    procedure GetValueType(aValueType: nsAString); safecall;
    procedure SetValueType(const aValueType: nsAString); safecall;
  end;

  nsIDOMHTMLPreElement = interface(nsIDOMHTMLElement)
  ['{a6cf90a4-15b3-11d2-932e-00805f8add32}']
    function GetWidth: PRInt32; safecall;
    procedure SetWidth(aWidth: PRInt32); safecall;
    property Width: PRInt32 read GetWidth write SetWidth;
  end;

  nsIDOMHTMLQuoteElement = interface(nsIDOMHTMLElement)
  ['{a6cf90a3-15b3-11d2-932e-00805f8add32}']
    procedure GetCite(aCite: nsAString); safecall;
    procedure SetCite(const aCite: nsAString); safecall;
  end;

  nsIDOMHTMLScriptElement = interface(nsIDOMHTMLElement)
  ['{a6cf90b1-15b3-11d2-932e-00805f8add32}']
    procedure GetText(aText: nsAString); safecall;
    procedure SetText(const aText: nsAString); safecall;
    procedure GetHtmlFor(aHtmlFor: nsAString); safecall;
    procedure SetHtmlFor(const aHtmlFor: nsAString); safecall;
    procedure GetEvent(aEvent: nsAString); safecall;
    procedure SetEvent(const aEvent: nsAString); safecall;
    procedure GetCharset(aCharset: nsAString); safecall;
    procedure SetCharset(const aCharset: nsAString); safecall;
    function GetDefer: PRBool; safecall;
    procedure SetDefer(aDefer: PRBool); safecall;
    property Defer: PRBool read GetDefer write SetDefer;
    procedure GetSrc(aSrc: nsAString); safecall;
    procedure SetSrc(const aSrc: nsAString); safecall;
    procedure GetType(aType: nsAString); safecall;
    procedure SetType(const aType: nsAString); safecall;
  end;

  nsIDOMHTMLSelectElement = interface(nsIDOMHTMLElement)
  ['{a6cf9090-15b3-11d2-932e-00805f8add32}']
    procedure GetType(aType: nsAString); safecall;
    function GetSelectedIndex: PRInt32; safecall;
    procedure SetSelectedIndex(aSelectedIndex: PRInt32); safecall;
    property SelectedIndex: PRInt32 read GetSelectedIndex write SetSelectedIndex;
    procedure GetValue(aValue: nsAString); safecall;
    procedure SetValue(const aValue: nsAString); safecall;
    function GetLength: PRUint32; safecall;
    procedure SetLength(aLength: PRUint32); safecall;
    property Length: PRUint32 read GetLength write SetLength;
    function GetForm: nsIDOMHTMLFormElement; safecall;
    property Form: nsIDOMHTMLFormElement read GetForm;
    function GetOptions: nsIDOMHTMLOptionsCollection; safecall;
    property Options: nsIDOMHTMLOptionsCollection read GetOptions;
    function GetDisabled: PRBool; safecall;
    procedure SetDisabled(aDisabled: PRBool); safecall;
    property Disabled: PRBool read GetDisabled write SetDisabled;
    function GetMultiple: PRBool; safecall;
    procedure SetMultiple(aMultiple: PRBool); safecall;
    property Multiple: PRBool read GetMultiple write SetMultiple;
    procedure GetName(aName: nsAString); safecall;
    procedure SetName(const aName: nsAString); safecall;
    function GetSize: PRInt32; safecall;
    procedure SetSize(aSize: PRInt32); safecall;
    property Size: PRInt32 read GetSize write SetSize;
    function GetTabIndex: PRInt32; safecall;
    procedure SetTabIndex(aTabIndex: PRInt32); safecall;
    property TabIndex: PRInt32 read GetTabIndex write SetTabIndex;
    procedure Add(element: nsIDOMHTMLElement; before: nsIDOMHTMLElement); safecall;
    procedure Remove(index: PRInt32); safecall;
    procedure Blur; safecall;
    procedure Focus; safecall;
  end;

  nsIDOMHTMLStyleElement = interface(nsIDOMHTMLElement)
  ['{a6cf908d-15b3-11d2-932e-00805f8add32}']
    function GetDisabled: PRBool; safecall;
    procedure SetDisabled(aDisabled: PRBool); safecall;
    property Disabled: PRBool read GetDisabled write SetDisabled;
    procedure GetMedia(aMedia: nsAString); safecall;
    procedure SetMedia(const aMedia: nsAString); safecall;
    procedure GetType(aType: nsAString); safecall;
    procedure SetType(const aType: nsAString); safecall;
  end;

  nsIDOMHTMLTableCaptionElement = interface(nsIDOMHTMLElement)
  ['{a6cf90b3-15b3-11d2-932e-00805f8add32}']
    procedure GetAlign(aAlign: nsAString); safecall;
    procedure SetAlign(const aAlign: nsAString); safecall;
  end;

  nsIDOMHTMLTableCellElement = interface(nsIDOMHTMLElement)
  ['{a6cf90b7-15b3-11d2-932e-00805f8add32}']
    function GetCellIndex: PRInt32; safecall;
    property CellIndex: PRInt32 read GetCellIndex;
    procedure GetAbbr(aAbbr: nsAString); safecall;
    procedure SetAbbr(const aAbbr: nsAString); safecall;
    procedure GetAlign(aAlign: nsAString); safecall;
    procedure SetAlign(const aAlign: nsAString); safecall;
    procedure GetAxis(aAxis: nsAString); safecall;
    procedure SetAxis(const aAxis: nsAString); safecall;
    procedure GetBgColor(aBgColor: nsAString); safecall;
    procedure SetBgColor(const aBgColor: nsAString); safecall;
    procedure GetCh(aCh: nsAString); safecall;
    procedure SetCh(const aCh: nsAString); safecall;
    procedure GetChOff(aChOff: nsAString); safecall;
    procedure SetChOff(const aChOff: nsAString); safecall;
    function GetColSpan: PRInt32; safecall;
    procedure SetColSpan(aColSpan: PRInt32); safecall;
    property ColSpan: PRInt32 read GetColSpan write SetColSpan;
    procedure GetHeaders(aHeaders: nsAString); safecall;
    procedure SetHeaders(const aHeaders: nsAString); safecall;
    procedure GetHeight(aHeight: nsAString); safecall;
    procedure SetHeight(const aHeight: nsAString); safecall;
    function GetNoWrap: PRBool; safecall;
    procedure SetNoWrap(aNoWrap: PRBool); safecall;
    property NoWrap: PRBool read GetNoWrap write SetNoWrap;
    function GetRowSpan: PRInt32; safecall;
    procedure SetRowSpan(aRowSpan: PRInt32); safecall;
    property RowSpan: PRInt32 read GetRowSpan write SetRowSpan;
    procedure GetScope(aScope: nsAString); safecall;
    procedure SetScope(const aScope: nsAString); safecall;
    procedure GetVAlign(aVAlign: nsAString); safecall;
    procedure SetVAlign(const aVAlign: nsAString); safecall;
    procedure GetWidth(aWidth: nsAString); safecall;
    procedure SetWidth(const aWidth: nsAString); safecall;
  end;

  nsIDOMHTMLTableColElement = interface(nsIDOMHTMLElement)
  ['{a6cf90b4-15b3-11d2-932e-00805f8add32}']
    procedure GetAlign(aAlign: nsAString); safecall;
    procedure SetAlign(const aAlign: nsAString); safecall;
    procedure GetCh(aCh: nsAString); safecall;
    procedure SetCh(const aCh: nsAString); safecall;
    procedure GetChOff(aChOff: nsAString); safecall;
    procedure SetChOff(const aChOff: nsAString); safecall;
    function GetSpan: PRInt32; safecall;
    procedure SetSpan(aSpan: PRInt32); safecall;
    property Span: PRInt32 read GetSpan write SetSpan;
    procedure GetVAlign(aVAlign: nsAString); safecall;
    procedure SetVAlign(const aVAlign: nsAString); safecall;
    procedure GetWidth(aWidth: nsAString); safecall;
    procedure SetWidth(const aWidth: nsAString); safecall;
  end;

  nsIDOMHTMLTableElement = interface(nsIDOMHTMLElement)
  ['{a6cf90b2-15b3-11d2-932e-00805f8add32}']
    function GetCaption: nsIDOMHTMLTableCaptionElement; safecall;
    procedure SetCaption(aCaption: nsIDOMHTMLTableCaptionElement); safecall;
    property Caption: nsIDOMHTMLTableCaptionElement read GetCaption write SetCaption;
    function GetTHead: nsIDOMHTMLTableSectionElement; safecall;
    procedure SetTHead(aTHead: nsIDOMHTMLTableSectionElement); safecall;
    property THead: nsIDOMHTMLTableSectionElement read GetTHead write SetTHead;
    function GetTFoot: nsIDOMHTMLTableSectionElement; safecall;
    procedure SetTFoot(aTFoot: nsIDOMHTMLTableSectionElement); safecall;
    property TFoot: nsIDOMHTMLTableSectionElement read GetTFoot write SetTFoot;
    function GetRows: nsIDOMHTMLCollection; safecall;
    property Rows: nsIDOMHTMLCollection read GetRows;
    function GetTBodies: nsIDOMHTMLCollection; safecall;
    property TBodies: nsIDOMHTMLCollection read GetTBodies;
    procedure GetAlign(aAlign: nsAString); safecall;
    procedure SetAlign(const aAlign: nsAString); safecall;
    procedure GetBgColor(aBgColor: nsAString); safecall;
    procedure SetBgColor(const aBgColor: nsAString); safecall;
    procedure GetBorder(aBorder: nsAString); safecall;
    procedure SetBorder(const aBorder: nsAString); safecall;
    procedure GetCellPadding(aCellPadding: nsAString); safecall;
    procedure SetCellPadding(const aCellPadding: nsAString); safecall;
    procedure GetCellSpacing(aCellSpacing: nsAString); safecall;
    procedure SetCellSpacing(const aCellSpacing: nsAString); safecall;
    procedure GetFrame(aFrame: nsAString); safecall;
    procedure SetFrame(const aFrame: nsAString); safecall;
    procedure GetRules(aRules: nsAString); safecall;
    procedure SetRules(const aRules: nsAString); safecall;
    procedure GetSummary(aSummary: nsAString); safecall;
    procedure SetSummary(const aSummary: nsAString); safecall;
    procedure GetWidth(aWidth: nsAString); safecall;
    procedure SetWidth(const aWidth: nsAString); safecall;
    function CreateTHead: nsIDOMHTMLElement; safecall;
    procedure DeleteTHead; safecall;
    function CreateTFoot: nsIDOMHTMLElement; safecall;
    procedure DeleteTFoot; safecall;
    function CreateCaption: nsIDOMHTMLElement; safecall;
    procedure DeleteCaption; safecall;
    function InsertRow(index: PRInt32): nsIDOMHTMLElement; safecall;
    procedure DeleteRow(index: PRInt32); safecall;
  end;

  nsIDOMHTMLTableRowElement = interface(nsIDOMHTMLElement)
  ['{a6cf90b6-15b3-11d2-932e-00805f8add32}']
    function GetRowIndex: PRInt32; safecall;
    property RowIndex: PRInt32 read GetRowIndex;
    function GetSectionRowIndex: PRInt32; safecall;
    property SectionRowIndex: PRInt32 read GetSectionRowIndex;
    function GetCells: nsIDOMHTMLCollection; safecall;
    property Cells: nsIDOMHTMLCollection read GetCells;
    procedure GetAlign(aAlign: nsAString); safecall;
    procedure SetAlign(const aAlign: nsAString); safecall;
    procedure GetBgColor(aBgColor: nsAString); safecall;
    procedure SetBgColor(const aBgColor: nsAString); safecall;
    procedure GetCh(aCh: nsAString); safecall;
    procedure SetCh(const aCh: nsAString); safecall;
    procedure GetChOff(aChOff: nsAString); safecall;
    procedure SetChOff(const aChOff: nsAString); safecall;
    procedure GetVAlign(aVAlign: nsAString); safecall;
    procedure SetVAlign(const aVAlign: nsAString); safecall;
    function InsertCell(index: PRInt32): nsIDOMHTMLElement; safecall;
    procedure DeleteCell(index: PRInt32); safecall;
  end;

  nsIDOMHTMLTableSectionElement = interface(nsIDOMHTMLElement)
  ['{a6cf90b5-15b3-11d2-932e-00805f8add32}']
    procedure GetAlign(aAlign: nsAString); safecall;
    procedure SetAlign(const aAlign: nsAString); safecall;
    procedure GetCh(aCh: nsAString); safecall;
    procedure SetCh(const aCh: nsAString); safecall;
    procedure GetChOff(aChOff: nsAString); safecall;
    procedure SetChOff(const aChOff: nsAString); safecall;
    procedure GetVAlign(aVAlign: nsAString); safecall;
    procedure SetVAlign(const aVAlign: nsAString); safecall;
    function GetRows: nsIDOMHTMLCollection; safecall;
    property Rows: nsIDOMHTMLCollection read GetRows;
    function InsertRow(index: PRInt32): nsIDOMHTMLElement; safecall;
    procedure DeleteRow(index: PRInt32); safecall;
  end;

  nsIDOMHTMLTextAreaElement = interface(nsIDOMHTMLElement)
  ['{a6cf9094-15b3-11d2-932e-00805f8add32}']
    procedure GetDefaultValue(aDefaultValue: nsAString); safecall;
    procedure SetDefaultValue(const aDefaultValue: nsAString); safecall;
    function GetForm: nsIDOMHTMLFormElement; safecall;
    property Form: nsIDOMHTMLFormElement read GetForm;
    procedure GetAccessKey(aAccessKey: nsAString); safecall;
    procedure SetAccessKey(const aAccessKey: nsAString); safecall;
    function GetCols: PRInt32; safecall;
    procedure SetCols(aCols: PRInt32); safecall;
    property Cols: PRInt32 read GetCols write SetCols;
    function GetDisabled: PRBool; safecall;
    procedure SetDisabled(aDisabled: PRBool); safecall;
    property Disabled: PRBool read GetDisabled write SetDisabled;
    procedure GetName(aName: nsAString); safecall;
    procedure SetName(const aName: nsAString); safecall;
    function GetReadOnly: PRBool; safecall;
    procedure SetReadOnly(aReadOnly: PRBool); safecall;
    property ReadOnly: PRBool read GetReadOnly write SetReadOnly;
    function GetRows: PRInt32; safecall;
    procedure SetRows(aRows: PRInt32); safecall;
    property Rows: PRInt32 read GetRows write SetRows;
    function GetTabIndex: PRInt32; safecall;
    procedure SetTabIndex(aTabIndex: PRInt32); safecall;
    property TabIndex: PRInt32 read GetTabIndex write SetTabIndex;
    procedure GetType(aType: nsAString); safecall;
    procedure GetValue(aValue: nsAString); safecall;
    procedure SetValue(const aValue: nsAString); safecall;
    procedure Blur; safecall;
    procedure Focus; safecall;
    procedure Select; safecall;
  end;

  nsIDOMHTMLTitleElement = interface(nsIDOMHTMLElement)
  ['{a6cf9089-15b3-11d2-932e-00805f8add32}']
    procedure GetText(aText: nsAString); safecall;
    procedure SetText(const aText: nsAString); safecall;
  end;

  nsIDOMHTMLUListElement = interface(nsIDOMHTMLElement)
  ['{a6cf9099-15b3-11d2-932e-00805f8add32}']
    function GetCompact: PRBool; safecall;
    procedure SetCompact(aCompact: PRBool); safecall;
    property Compact: PRBool read GetCompact write SetCompact;
    procedure GetType(aType: nsAString); safecall;
    procedure SetType(const aType: nsAString); safecall;
  end;

  nsIDOMMediaList = interface(nsISupports)
  ['{9b0c2ed7-111c-4824-adf9-ef0da6dad371}']
    procedure GetMediaText(aMediaText: nsAString); safecall;
    procedure SetMediaText(const aMediaText: nsAString); safecall;
    function GetLength: PRUint32; safecall;
    property Length: PRUint32 read GetLength;
    procedure Item(index: PRUint32; _retval: nsAString); safecall;
    procedure DeleteMedium(const oldMedium: nsAString); safecall;
    procedure AppendMedium(const newMedium: nsAString); safecall;
  end;

  nsIDOMUIEvent = interface(nsIDOMEvent)
  ['{a6cf90c3-15b3-11d2-932e-00805f8add32}']
    function GetView: nsIDOMAbstractView; safecall;
    property View: nsIDOMAbstractView read GetView;
    function GetDetail: PRInt32; safecall;
    property Detail: PRInt32 read GetDetail;
    procedure InitUIEvent(const typeArg: nsAString; canBubbleArg: PRBool; cancelableArg: PRBool; viewArg: nsIDOMAbstractView; detailArg: PRInt32); safecall;
  end;

  nsIDOMMouseEvent = interface(nsIDOMUIEvent)
  ['{ff751edc-8b02-aae7-0010-8301838a3123}']
    function GetScreenX: PRInt32; safecall;
    property ScreenX: PRInt32 read GetScreenX;
    function GetScreenY: PRInt32; safecall;
    property ScreenY: PRInt32 read GetScreenY;
    function GetClientX: PRInt32; safecall;
    property ClientX: PRInt32 read GetClientX;
    function GetClientY: PRInt32; safecall;
    property ClientY: PRInt32 read GetClientY;
    function GetCtrlKey: PRBool; safecall;
    property CtrlKey: PRBool read GetCtrlKey;
    function GetShiftKey: PRBool; safecall;
    property ShiftKey: PRBool read GetShiftKey;
    function GetAltKey: PRBool; safecall;
    property AltKey: PRBool read GetAltKey;
    function GetMetaKey: PRBool; safecall;
    property MetaKey: PRBool read GetMetaKey;
    function GetButton: PRUint16; safecall;
    property Button: PRUint16 read GetButton;
    function GetRelatedTarget: nsIDOMEventTarget; safecall;
    property RelatedTarget: nsIDOMEventTarget read GetRelatedTarget;
    procedure InitMouseEvent(const typeArg: nsAString; canBubbleArg: PRBool; cancelableArg: PRBool; viewArg: nsIDOMAbstractView; detailArg: PRInt32; screenXArg: PRInt32; screenYArg: PRInt32; clientXArg: PRInt32; clientYArg: PRInt32; ctrlKeyArg: PRBool; altKeyArg: PRBool; shiftKeyArg: PRBool; metaKeyArg: PRBool; buttonArg: PRUint16; relatedTargetArg: nsIDOMEventTarget); safecall;
  end;

  nsIDOMNamedNodeMap = interface(nsISupports)
  ['{a6cf907b-15b3-11d2-932e-00805f8add32}']
    function GetNamedItem(const name: nsAString): nsIDOMNode; safecall;
    function SetNamedItem(arg: nsIDOMNode): nsIDOMNode; safecall;
    function RemoveNamedItem(const name: nsAString): nsIDOMNode; safecall;
    function Item(index: PRUint32): nsIDOMNode; safecall;
    function GetLength: PRUint32; safecall;
    property Length: PRUint32 read GetLength;
    function GetNamedItemNS(const namespaceURI: nsAString; const localName: nsAString): nsIDOMNode; safecall;
    function SetNamedItemNS(arg: nsIDOMNode): nsIDOMNode; safecall;
    function RemoveNamedItemNS(const namespaceURI: nsAString; const localName: nsAString): nsIDOMNode; safecall;
  end;

  nsIDOMNodeList = interface(nsISupports)
  ['{a6cf907d-15b3-11d2-932e-00805f8add32}']
    function Item(index: PRUint32): nsIDOMNode; safecall;
    function GetLength: PRUint32; safecall;
    property Length: PRUint32 read GetLength;
  end;

  nsIDOMNotation = interface(nsIDOMNode)
  ['{a6cf907e-15b3-11d2-932e-00805f8add32}']
    procedure GetPublicId(aPublicId: nsAString); safecall;
    procedure GetSystemId(aSystemId: nsAString); safecall;
  end;

  nsIDOMOfflineResourceList = interface(nsISupports)
  ['{8449bce2-0d8c-4c74-ab79-b41b8d81f1c4}']
    function GetLength: PRUint32; safecall;
    property Length: PRUint32 read GetLength;
    procedure Item(index: PRUint32; _retval: nsAString); safecall;
    procedure Add(const uri: nsAString); safecall;
    procedure Remove(const uri: nsAString); safecall;
    function GetStatus: PRUint16; safecall;
    property Status: PRUint16 read GetStatus;
    procedure Update; safecall;
    procedure SwapCache; safecall;
    function GetOnchecking: nsIDOMEventListener; safecall;
    procedure SetOnchecking(aOnchecking: nsIDOMEventListener); safecall;
    property Onchecking: nsIDOMEventListener read GetOnchecking write SetOnchecking;
    function GetOnerror: nsIDOMEventListener; safecall;
    procedure SetOnerror(aOnerror: nsIDOMEventListener); safecall;
    property Onerror: nsIDOMEventListener read GetOnerror write SetOnerror;
    function GetOnnoupdate: nsIDOMEventListener; safecall;
    procedure SetOnnoupdate(aOnnoupdate: nsIDOMEventListener); safecall;
    property Onnoupdate: nsIDOMEventListener read GetOnnoupdate write SetOnnoupdate;
    function GetOndownloading: nsIDOMEventListener; safecall;
    procedure SetOndownloading(aOndownloading: nsIDOMEventListener); safecall;
    property Ondownloading: nsIDOMEventListener read GetOndownloading write SetOndownloading;
    function GetOnprogress: nsIDOMEventListener; safecall;
    procedure SetOnprogress(aOnprogress: nsIDOMEventListener); safecall;
    property Onprogress: nsIDOMEventListener read GetOnprogress write SetOnprogress;
    function GetOnupdateready: nsIDOMEventListener; safecall;
    procedure SetOnupdateready(aOnupdateready: nsIDOMEventListener); safecall;
    property Onupdateready: nsIDOMEventListener read GetOnupdateready write SetOnupdateready;
    function GetOncached: nsIDOMEventListener; safecall;
    procedure SetOncached(aOncached: nsIDOMEventListener); safecall;
    property Oncached: nsIDOMEventListener read GetOncached write SetOncached;
  end;

  nsIDOMProcessingInstruction = interface(nsIDOMNode)
  ['{a6cf907f-15b3-11d2-932e-00805f8add32}']
    procedure GetTarget(aTarget: nsAString); safecall;
    procedure GetData(aData: nsAString); safecall;
    procedure SetData(const aData: nsAString); safecall;
  end;

  nsIDOMRange = interface(nsISupports)
  ['{a6cf90ce-15b3-11d2-932e-00805f8add32}']
    function GetStartContainer: nsIDOMNode; safecall;
    property StartContainer: nsIDOMNode read GetStartContainer;
    function GetStartOffset: PRInt32; safecall;
    property StartOffset: PRInt32 read GetStartOffset;
    function GetEndContainer: nsIDOMNode; safecall;
    property EndContainer: nsIDOMNode read GetEndContainer;
    function GetEndOffset: PRInt32; safecall;
    property EndOffset: PRInt32 read GetEndOffset;
    function GetCollapsed: PRBool; safecall;
    property Collapsed: PRBool read GetCollapsed;
    function GetCommonAncestorContainer: nsIDOMNode; safecall;
    property CommonAncestorContainer: nsIDOMNode read GetCommonAncestorContainer;
    procedure SetStart(refNode: nsIDOMNode; offset: PRInt32); safecall;
    procedure SetEnd(refNode: nsIDOMNode; offset: PRInt32); safecall;
    procedure SetStartBefore(refNode: nsIDOMNode); safecall;
    procedure SetStartAfter(refNode: nsIDOMNode); safecall;
    procedure SetEndBefore(refNode: nsIDOMNode); safecall;
    procedure SetEndAfter(refNode: nsIDOMNode); safecall;
    procedure Collapse(toStart: PRBool); safecall;
    procedure SelectNode(refNode: nsIDOMNode); safecall;
    procedure SelectNodeContents(refNode: nsIDOMNode); safecall;
    function CompareBoundaryPoints(how: PRUint16; sourceRange: nsIDOMRange): PRInt16; safecall;
    procedure DeleteContents; safecall;
    function ExtractContents: nsIDOMDocumentFragment; safecall;
    function CloneContents: nsIDOMDocumentFragment; safecall;
    procedure InsertNode(newNode: nsIDOMNode); safecall;
    procedure SurroundContents(newParent: nsIDOMNode); safecall;
    function CloneRange: nsIDOMRange; safecall;
    procedure ToString(_retval: nsAString); safecall;
    procedure Detach; safecall;
  end;

  nsIDOMRect = interface(nsISupports)
  ['{71735f62-ac5c-4236-9a1f-5ffb280d531c}']
    function GetTop: nsIDOMCSSPrimitiveValue; safecall;
    property Top: nsIDOMCSSPrimitiveValue read GetTop;
    function GetRight: nsIDOMCSSPrimitiveValue; safecall;
    property Right: nsIDOMCSSPrimitiveValue read GetRight;
    function GetBottom: nsIDOMCSSPrimitiveValue; safecall;
    property Bottom: nsIDOMCSSPrimitiveValue read GetBottom;
    function GetLeft: nsIDOMCSSPrimitiveValue; safecall;
    property Left: nsIDOMCSSPrimitiveValue read GetLeft;
  end;

  nsIDOMRGBColor = interface(nsISupports)
  ['{6aff3102-320d-4986-9790-12316bb87cf9}']
    function GetRed: nsIDOMCSSPrimitiveValue; safecall;
    property Red: nsIDOMCSSPrimitiveValue read GetRed;
    function GetGreen: nsIDOMCSSPrimitiveValue; safecall;
    property Green: nsIDOMCSSPrimitiveValue read GetGreen;
    function GetBlue: nsIDOMCSSPrimitiveValue; safecall;
    property Blue: nsIDOMCSSPrimitiveValue read GetBlue;
  end;

  nsIDOMStorage = interface(nsISupports)
  ['{95cc1383-3b62-4b89-aaef-1004a513ef47}']
    function GetLength: PRUint32; safecall;
    property Length: PRUint32 read GetLength;
    procedure Key(index: PRUint32; _retval: nsAString); safecall;
    function GetItem(const key: nsAString): nsIDOMStorageItem; safecall;
    procedure SetItem(const key: nsAString; const data: nsAString); safecall;
    procedure RemoveItem(const key: nsAString); safecall;
  end;

  nsIDOMStorageEvent = interface(nsIDOMEvent)
  ['{fc540c28-8edd-4b7a-9c30-8638289b7a7d}']
    procedure GetDomain(aDomain: nsAString); safecall;
    procedure InitStorageEvent(const typeArg: nsAString; canBubbleArg: PRBool; cancelableArg: PRBool; const domainArg: nsAString); safecall;
    procedure InitStorageEventNS(const namespaceURIArg: nsAString; const typeArg: nsAString; canBubbleArg: PRBool; cancelableArg: PRBool; const domainArg: nsAString); safecall;
  end;

  nsIDOMStorageItem = interface(nsISupports)
  ['{0cc37c78-4c5f-48e1-adfc-7480b8fe9dc4}']
    function GetSecure: PRBool; safecall;
    procedure SetSecure(aSecure: PRBool); safecall;
    property Secure: PRBool read GetSecure write SetSecure;
    procedure GetValue(aValue: nsAString); safecall;
    procedure SetValue(const aValue: nsAString); safecall;
  end;

  nsIDOMStorageList = interface(nsISupports)
  ['{f2166929-91b6-4372-8d5f-c366f47a5f54}']
    function NamedItem(const domain: nsAString): nsIDOMStorage; safecall;
  end;

  nsIDOMStorageWindow = interface(nsISupports)
  ['{55e9c181-2476-47cf-97f8-efdaaf7b6f7a}']
    function GetSessionStorage: nsIDOMStorage; safecall;
    property SessionStorage: nsIDOMStorage read GetSessionStorage;
    function GetGlobalStorage: nsIDOMStorageList; safecall;
    property GlobalStorage: nsIDOMStorageList read GetGlobalStorage;
  end;

  nsIDOMStyleSheetList = interface(nsISupports)
  ['{a6cf9081-15b3-11d2-932e-00805f8add32}']
    function GetLength: PRUint32; safecall;
    property Length: PRUint32 read GetLength;
    function Item(index: PRUint32): nsIDOMStyleSheet; safecall;
  end;

  nsIDOMWindow = interface(nsISupports)
  ['{a6cf906b-15b3-11d2-932e-00805f8add32}']
    function GetDocument: nsIDOMDocument; safecall;
    property Document: nsIDOMDocument read GetDocument;
    function GetParent: nsIDOMWindow; safecall;
    property Parent: nsIDOMWindow read GetParent;
    function GetTop: nsIDOMWindow; safecall;
    property Top: nsIDOMWindow read GetTop;
    function GetScrollbars: nsIDOMBarProp; safecall;
    property Scrollbars: nsIDOMBarProp read GetScrollbars;
    function GetFrames: nsIDOMWindowCollection; safecall;
    property Frames: nsIDOMWindowCollection read GetFrames;
    procedure GetName(aName: nsAString); safecall;
    procedure SetName(const aName: nsAString); safecall;
    function GetTextZoom: Single; safecall;
    procedure SetTextZoom(aTextZoom: Single); safecall;
    property TextZoom: Single read GetTextZoom write SetTextZoom;
    function GetScrollX: PRInt32; safecall;
    property ScrollX: PRInt32 read GetScrollX;
    function GetScrollY: PRInt32; safecall;
    property ScrollY: PRInt32 read GetScrollY;
    procedure ScrollTo(xScroll: PRInt32; yScroll: PRInt32); safecall;
    procedure ScrollBy(xScrollDif: PRInt32; yScrollDif: PRInt32); safecall;
    function GetSelection: nsISelection; safecall;
    procedure ScrollByLines(numLines: PRInt32); safecall;
    procedure ScrollByPages(numPages: PRInt32); safecall;
    procedure SizeToContent; safecall;
  end;

  nsIDOMWindow2 = interface(nsIDOMWindow)
  ['{73c5fa35-3add-4c87-a303-a850ccf4d65a}']
    function GetWindowRoot: nsIDOMEventTarget; safecall;
    property WindowRoot: nsIDOMEventTarget read GetWindowRoot;
    function GetApplicationCache: nsIDOMOfflineResourceList; safecall;
    property ApplicationCache: nsIDOMOfflineResourceList read GetApplicationCache;
  end;

  nsIDOMWindowCollection = interface(nsISupports)
  ['{a6cf906f-15b3-11d2-932e-00805f8add32}']
    function GetLength: PRUint32; safecall;
    property Length: PRUint32 read GetLength;
    function Item(index: PRUint32): nsIDOMWindow; safecall;
    function NamedItem(const name: nsAString): nsIDOMWindow; safecall;
  end;

  nsIDOMWindowUtils = interface(nsISupports)
  ['{1cfc1a0a-e348-4b18-b61b-935c192f85c4}']
    function GetImageAnimationMode: PRUint16; safecall;
    procedure SetImageAnimationMode(aImageAnimationMode: PRUint16); safecall;
    property ImageAnimationMode: PRUint16 read GetImageAnimationMode write SetImageAnimationMode;
    function GetDocCharsetIsForced: PRBool; safecall;
    property DocCharsetIsForced: PRBool read GetDocCharsetIsForced;
    procedure GetDocumentMetadata(const aName: nsAString; _retval: nsAString); safecall;
    procedure Redraw; safecall;
    procedure SendMouseEvent(const aType: nsAString; aX: PRInt32; aY: PRInt32; aButton: PRInt32; aClickCount: PRInt32; aModifiers: PRInt32); safecall;
    procedure SendKeyEvent(const aType: nsAString; aKeyCode: PRInt32; aCharCode: PRInt32; aModifiers: PRInt32); safecall;
    procedure SendNativeKeyEvent(aNativeKeyboardLayout: PRInt32; aNativeKeyCode: PRInt32; aModifierFlags: PRInt32; const aCharacters: nsAString; const aUnmodifiedCharacters: nsAString); safecall;
    procedure Focus(aElement: nsIDOMElement); safecall;
    procedure GarbageCollect; safecall;
  end;

  nsIEmbeddingSiteWindow = interface(nsISupports)
  ['{3e5432cd-9568-4bd1-8cbe-d50aba110743}']
    procedure SetDimensions(flags: PRUint32; x: PRInt32; y: PRInt32; cx: PRInt32; cy: PRInt32); safecall;
    procedure GetDimensions(flags: PRUint32; out x: PRInt32; out y: PRInt32; out cx: PRInt32; out cy: PRInt32); safecall;
    procedure SetFocus; safecall;
    function GetVisibility: PRBool; safecall;
    procedure SetVisibility(aVisibility: PRBool); safecall;
    property Visibility: PRBool read GetVisibility write SetVisibility;
    function GetTitle: PWideChar; safecall;
    procedure SetTitle(const aTitle: PWideChar); safecall;
    property Title: PWideChar read GetTitle write SetTitle;
    function GetSiteWindow: Pointer; safecall;
    property SiteWindow: Pointer read GetSiteWindow;
  end;

  nsIFactory = interface(nsISupports)
  ['{00000001-0000-0000-c000-000000000046}']
    procedure CreateInstance(aOuter: nsISupports; const iid: TGUID; out _result); safecall;
    procedure LockFactory(lock: boolean); safecall;
  end;

  nsIURI = interface(nsISupports)
  ['{395fe045-7d18-4adb-a3fd-af98c8a1af11}']
    procedure GetSpec(aSpec: nsAUTF8String); safecall;
    procedure SetSpec(const aSpec: nsAUTF8String); safecall;
    procedure GetPrePath(aPrePath: nsAUTF8String); safecall;
    procedure GetScheme(aScheme: nsACString); safecall;
    procedure SetScheme(const aScheme: nsACString); safecall;
    procedure GetUserPass(aUserPass: nsAUTF8String); safecall;
    procedure SetUserPass(const aUserPass: nsAUTF8String); safecall;
    procedure GetUsername(aUsername: nsAUTF8String); safecall;
    procedure SetUsername(const aUsername: nsAUTF8String); safecall;
    procedure GetPassword(aPassword: nsAUTF8String); safecall;
    procedure SetPassword(const aPassword: nsAUTF8String); safecall;
    procedure GetHostPort(aHostPort: nsAUTF8String); safecall;
    procedure SetHostPort(const aHostPort: nsAUTF8String); safecall;
    procedure GetHost(aHost: nsAUTF8String); safecall;
    procedure SetHost(const aHost: nsAUTF8String); safecall;
    function GetPort: PRInt32; safecall;
    procedure SetPort(aPort: PRInt32); safecall;
    property Port: PRInt32 read GetPort write SetPort;
    procedure GetPath(aPath: nsAUTF8String); safecall;
    procedure SetPath(const aPath: nsAUTF8String); safecall;
    function Equals(other: nsIURI): PRBool; safecall;
    function SchemeIs(const scheme: PAnsiChar): PRBool; safecall;
    function Clone: nsIURI; safecall;
    procedure Resolve(const relativePath: nsAUTF8String; _retval: nsAUTF8String); safecall;
    procedure GetAsciiSpec(aAsciiSpec: nsACString); safecall;
    procedure GetAsciiHost(aAsciiHost: nsACString); safecall;
    procedure GetOriginCharset(aOriginCharset: nsACString); safecall;
    procedure GetRef(aRef: nsAUTF8String); safecall;
    procedure SetRef(const aRef: nsAUTF8String); safecall;
    function GetCloseIgnoringRef:PRBool; safecall;
    procedure SetCloseIgnoringRef(aClosingIgnoringRef: PRBool); safecall;
    procedure GetSpecIgnoringRef(aSpecIgnoringRef: nsAUTF8String); safecall;
    function GetHasRef: PRBool; safecall;
  end;

  nsIURL = interface(nsIURI)
  ['{067d697a-c725-4293-9656-e658a75e6bcf}']
    procedure GetFilePath(aFilePath: nsAUTF8String); safecall;
    procedure SetFilePath(const aFilePath: nsAUTF8String); safecall;
    procedure GetQuery(aQuery: nsAUTF8String); safecall;
    procedure SetQuery(const aQuery: nsAUTF8String); safecall;
    procedure GetDirectory(aDirectory: nsAUTF8String); safecall;
    procedure SetDirectory(const aDirectory: nsAUTF8String); safecall;
    procedure GetFileName(aFileName: nsAUTF8String); safecall;
    procedure SetFileName(const aFileName: nsAUTF8String); safecall;
    procedure GetFileBaseName(aFileBaseName: nsAUTF8String); safecall;
    procedure SetFileBaseName(const aFileBaseName: nsAUTF8String); safecall;
    procedure GetFileExtension(aFileExtension: nsAUTF8String); safecall;
    procedure SetFileExtension(const aFileExtension: nsAUTF8String); safecall;
    procedure GetCommonBaseSpec(aURIToCompare: nsIURI; _retval: nsAUTF8String); safecall;
    procedure GetRelativeSpec(aURIToCompare: nsIURI; _retval: nsAUTF8String); safecall;
  end;

  nsIFileURL = interface(nsIURL)
  ['{93a4f94e-1dae-4056-ac4e-08e13691ee8e}']
    function GetFile: nsIFile; safecall;
    procedure SetFile(aFile: nsIFile); safecall;
    property _File: nsIFile read GetFile write SetFile;
  end;

  nsIGlobalHistory = interface(nsISupports)
  ['{9491c383-e3c4-11d2-bdbe-0050040a9b44}']
    procedure AddPage(const aURL: PAnsiChar); safecall;
    function IsVisited(const aURL: PAnsiChar): PRBool; safecall;
  end;

  nsIHashable = interface(nsISupports)
  ['{17e595fa-b57a-4933-bd0f-b1812e8ab188}']
    function Equals(aOther: nsIHashable): PRBool; safecall;
    function GetHashCode: PRUint32; safecall;
    property HashCode: PRUint32 read GetHashCode;
  end;

  nsIHistoryEntry = interface(nsISupports)
  ['{a41661d4-1417-11d5-9882-00c04fa02f40}']
    function GetURI: nsIURI; safecall;
    property URI: nsIURI read GetURI;
    function GetTitle: PWideChar; safecall;
    property Title: PWideChar read GetTitle;
    function GetIsSubFrame: PRBool; safecall;
    property IsSubFrame: PRBool read GetIsSubFrame;
  end;

  nsIHttpChannel = interface(nsIChannel)
  ['{9277fe09-f0cc-4cd9-bbce-581dd94b0260}']
    procedure GetRequestMethod(aRequestMethod: nsACString); safecall;
    procedure SetRequestMethod(const aRequestMethod: nsACString); safecall;
    function GetReferrer: nsIURI; safecall;
    procedure SetReferrer(aReferrer: nsIURI); safecall;
    property Referrer: nsIURI read GetReferrer write SetReferrer;
    function GetRequestHeader(const aHeader: nsACString): nsACString; safecall;
    procedure SetRequestHeader(const aHeader: nsACString; const aValue: nsACString; aMerge: PRBool); safecall;
    procedure VisitRequestHeaders(aVisitor: nsIHttpHeaderVisitor); safecall;
    function GetAllowPipelining: PRBool; safecall;
    procedure SetAllowPipelining(aAllowPipelining: PRBool); safecall;
    property AllowPipelining: PRBool read GetAllowPipelining write SetAllowPipelining;
    function GetRedirectionLimit: PRUint32; safecall;
    procedure SetRedirectionLimit(aRedirectionLimit: PRUint32); safecall;
    property RedirectionLimit: PRUint32 read GetRedirectionLimit write SetRedirectionLimit;
    function GetResponseStatus: PRUint32; safecall;
    property ResponseStatus: PRUint32 read GetResponseStatus;
    procedure GetResponseStatusText(aResponseStatusText: nsACString); safecall;
    function GetRequestSucceeded: PRBool; safecall;
    property RequestSucceeded: PRBool read GetRequestSucceeded;
    function GetResponseHeader(const header: nsACString): nsACString; safecall;
    procedure SetResponseHeader(const header: nsACString; const value: nsACString; merge: PRBool); safecall;
    procedure VisitResponseHeaders(aVisitor: nsIHttpHeaderVisitor); safecall;
    function IsNoStoreResponse: PRBool; safecall;
    function IsNoCacheResponse: PRBool; safecall;
  end;

  nsIHttpHeaderVisitor = interface(nsISupports)
  ['{35412859-b9d9-423c-8866-2d4559fdd2be}']
    procedure VisitHeader(const aHeader: nsACString; const aValue: nsACString); safecall;
  end;

  nsIInputStream = interface(nsISupports)
  ['{fa9c7f6c-61b3-11d4-9877-00c04fa0cf4a}']
    procedure Close; safecall;
    function Available: PRUint32; safecall;
    function Read(aBuf: PAnsiChar; aCount: PRUint32): PRUint32; safecall;
    function ReadSegments(aWriter: nsWriteSegmentFun; aClosure: Pointer; aCount: PRUint32): PRUint32; safecall;
    function IsNonBlocking: PRBool; safecall;
  end;

  nsIInterfaceRequestor = interface(nsISupports)
  ['{033a1470-8b2a-11d3-af88-00a024ffc08c}']
    procedure GetInterface(const uuid: TGUID; out _result); safecall;
  end;

  nsIIOService = interface(nsISupports)
  ['{bddeda3f-9020-4d12-8c70-984ee9f7935e}']
    function GetProtocolHandler(const aScheme: PAnsiChar): nsIProtocolHandler; safecall;
    function GetProtocolFlags(const aScheme: PAnsiChar): PRUint32; safecall;
    function NewURI(const aSpec: nsAUTF8String; const aOriginCharset: PAnsiChar; aBaseURI: nsIURI): nsIURI; safecall;
    function NewFileURI(aFile: nsIFile): nsIURI; safecall;
    function NewChannelFromURI(aURI: nsIURI): nsIChannel; safecall;
    function NewChannel(const aSpec: nsAUTF8String; const aOriginCharset: PAnsiChar; aBaseURI: nsIURI): nsIChannel; safecall;
    function GetOffline: PRBool; safecall;
    procedure SetOffline(aOffline: PRBool); safecall;
    property Offline: PRBool read GetOffline write SetOffline;
    function AllowPort(aPort: PRInt32; const aScheme: PAnsiChar): PRBool; safecall;
    function ExtractScheme(const urlString: nsAUTF8String): nsAUTF8String; safecall;
  end;

  nsIJSON = interface(nsISupports)
  ['{45464c36-efde-4cb5-8e00-07480533ff35}']
    procedure Encode(_retval: nsAString); safecall;
    procedure EncodeToStream(stream: nsIOutputStream; const charset: PAnsiChar; writeBOM: PRBool); safecall;
    procedure Decode(const str: nsAString); safecall;
    procedure DecodeFromStream(stream: nsIInputStream; contentLength: PRInt32); safecall;
  end;

  nsILoadGroup = interface(nsIRequest)
  ['{3de0a31c-feaf-400f-9f1e-4ef71f8b20cc}']
    function GetGroupObserver: nsIRequestObserver; safecall;
    procedure SetGroupObserver(aGroupObserver: nsIRequestObserver); safecall;
    property GroupObserver: nsIRequestObserver read GetGroupObserver write SetGroupObserver;
    function GetDefaultLoadRequest: nsIRequest; safecall;
    procedure SetDefaultLoadRequest(aDefaultLoadRequest: nsIRequest); safecall;
    property DefaultLoadRequest: nsIRequest read GetDefaultLoadRequest write SetDefaultLoadRequest;
    procedure AddRequest(aRequest: nsIRequest; aContext: nsISupports); safecall;
    procedure RemoveRequest(aRequest: nsIRequest; aContext: nsISupports; aStatus: nsresult); safecall;
    function GetRequests: nsISimpleEnumerator; safecall;
    property Requests: nsISimpleEnumerator read GetRequests;
    function GetActiveCount: PRUint32; safecall;
    property ActiveCount: PRUint32 read GetActiveCount;
    function GetNotificationCallbacks: nsIInterfaceRequestor; safecall;
    procedure SetNotificationCallbacks(aNotificationCallbacks: nsIInterfaceRequestor); safecall;
    property NotificationCallbacks: nsIInterfaceRequestor read GetNotificationCallbacks write SetNotificationCallbacks;
  end;

  nsILocalFile = interface(nsIFile)
  ['{aa610f20-a889-11d3-8c81-000064657374}']
    procedure InitWithPath(const filePath: nsAString); safecall;
    procedure InitWithNativePath(const filePath: nsACString); safecall;
    procedure InitWithFile(aFile: nsILocalFile); safecall;
    function GetFollowLinks: PRBool; safecall;
    procedure SetFollowLinks(aFollowLinks: PRBool); safecall;
    property FollowLinks: PRBool read GetFollowLinks write SetFollowLinks;
    function OpenNSPRFileDesc(flags: PRInt32; mode: PRInt32): PPRFileDesc; safecall;
    function OpenANSIFileDesc(const mode: PAnsiChar): PFILE; safecall;
    function Load: PPRLibrary; safecall;
    function GetDiskSpaceAvailable: PRInt64; safecall;
    property DiskSpaceAvailable: PRInt64 read GetDiskSpaceAvailable;
    procedure AppendRelativePath(const relativeFilePath: nsAString); safecall;
    procedure AppendRelativeNativePath(const relativeFilePath: nsACString); safecall;
    procedure GetPersistentDescriptor(aPersistentDescriptor: nsACString); safecall;
    procedure SetPersistentDescriptor(const aPersistentDescriptor: nsACString); safecall;
    procedure Reveal; safecall;
    procedure Launch; safecall;
    function GetRelativeDescriptor(fromFile: nsILocalFile): nsACString; safecall;
    procedure SetRelativeDescriptor(fromFile: nsILocalFile; const relativeDesc: nsACString); safecall;
  end;

  nsIMemory = interface(nsISupports)
  ['{59e7e77a-38e4-11d4-8cf5-0060b0fc14a3}']
    function Alloc(size: size_t): Pointer; stdcall;
    function Realloc(ptr: Pointer; newSize: size_t): Pointer; stdcall;
    procedure Free(ptr: Pointer); stdcall;
    procedure HeapMinimize(immediate: PRBool); safecall;
    function IsLowMemory: PRBool; safecall;
  end;

  nsIModule = interface(nsISupports)
  ['{7392d032-5371-11d3-994e-00805fd26fee}']
    procedure GetClassObject(aCompMgr: nsIComponentManager; const aClass: TGUID; const aIID: TGUID; out aResult); safecall;
    procedure RegisterSelf(aCompMgr: nsIComponentManager; aLocation: nsIFile; const aLoaderStr: PAnsiChar; const aType: PAnsiChar); safecall;
    procedure UnregisterSelf(aCompMgr: nsIComponentManager; aLocation: nsIFile; const aLoaderStr: PAnsiChar); safecall;
    function CanUnload(aCompMgr: nsIComponentManager): PRBool; safecall;
  end;

  nsIMutableArray = interface(nsIArray)
  ['{af059da0-c85b-40ec-af07-ae4bfdc192cc}']
    procedure AppendElement(element: nsISupports; weak: PRBool); safecall;
    procedure RemoveElementAt(index: PRUint32); safecall;
    procedure InsertElementAt(element: nsISupports; index: PRUint32; weak: PRBool); safecall;
    procedure ReplaceElementAt(element: nsISupports; index: PRUint32; weak: PRBool); safecall;
    procedure Clear; safecall;
  end;

  nsIObserver = interface(nsISupports)
  ['{db242e01-e4d9-11d2-9dde-000064657374}']
    procedure Observe(aSubject: nsISupports; const aTopic: PAnsiChar; const aData: PWideChar); safecall;
  end;

  nsIObserverService = interface(nsISupports)
  ['{d07f5192-e3d1-11d2-8acd-00105a1b8860}']
    procedure AddObserver(anObserver: nsIObserver; const aTopic: PAnsiChar; ownsWeak: PRBool); safecall;
    procedure RemoveObserver(anObserver: nsIObserver; const aTopic: PAnsiChar); safecall;
    procedure NotifyObservers(aSubject: nsISupports; const aTopic: PAnsiChar; const someData: PWideChar); safecall;
    function EnumerateObservers(const aTopic: PAnsiChar): nsISimpleEnumerator; safecall;
  end;

  nsIOutputStream = interface(nsISupports)
  ['{0d0acd2a-61b4-11d4-9877-00c04fa0cf4a}']
    procedure Close; safecall;
    procedure Flush; safecall;
    function Write(const aBuf: PAnsiChar; aCount: PRUint32): PRUint32; safecall;
    function WriteFrom(aFromStream: nsIInputStream; aCount: PRUint32): PRUint32; safecall;
    function WriteSegments(aReader: nsReadSegmentFun; aClosure: Pointer; aCount: PRUint32): PRUint32; safecall;
    function IsNonBlocking: PRBool; safecall;
  end;

  nsIPrefBranch = interface(nsISupports)
  ['{56c35506-f14b-11d3-99d3-ddbfac2ccf65}']
    function GetRoot: PAnsiChar; safecall;
    property Root: PAnsiChar read GetRoot;
    function GetPrefType(const aPrefName: PAnsiChar): PRInt32; safecall;
    function GetBoolPref(const aPrefName: PAnsiChar): PRBool; safecall;
    procedure SetBoolPref(const aPrefName: PAnsiChar; aValue: PRInt32); safecall;
    function GetCharPref(const aPrefName: PAnsiChar): PAnsiChar; safecall;
    procedure SetCharPref(const aPrefName: PAnsiChar; const aValue: PAnsiChar); safecall;
    function GetIntPref(const aPrefName: PAnsiChar): PRInt32; safecall;
    procedure SetIntPref(const aPrefName: PAnsiChar; aValue: PRInt32); safecall;
    procedure GetComplexValue(const aPrefName: PAnsiChar; const aType: TGUID; out aValue); safecall;
    procedure SetComplexValue(const aPrefName: PAnsiChar; const aType: TGUID; aValue: nsISupports); safecall;
    procedure ClearUserPref(const aPrefName: PAnsiChar); safecall;
    procedure LockPref(const aPrefName: PAnsiChar); safecall;
    function PrefHasUserValue(const aPrefName: PAnsiChar): PRBool; safecall;
    function PrefIsLocked(const aPrefName: PAnsiChar): PRBool; safecall;
    procedure UnlockPref(const aPrefName: PAnsiChar); safecall;
    procedure DeleteBranch(const aStartingAt: PAnsiChar); safecall;
    procedure GetChildList(const aStartingAt: PAnsiChar; out aCount: PRUint32; out aChildArray_array); safecall;
    procedure ResetBranch(const aStartingAt: PAnsiChar); safecall;
  end;

  nsIPrefBranch2 = interface(nsIPrefBranch)
  ['{74567534-eb94-4b1c-8f45-389643bfc555}']
    procedure AddObserver(const aDomain: PAnsiChar; aObserver: nsIObserver; aHoldWeak: PRBool); safecall;
    procedure RemoveObserver(const aDomain: PAnsiChar; aObserver: nsIObserver); safecall;
  end;

  nsIPrefLocalizedString = interface(nsISupports)
  ['{ae419e24-1dd1-11b2-b39a-d3e5e7073802}']
    function GetData: PWideChar; safecall;
    procedure SetData(const aData: PWideChar); safecall;
    property Data: PWideChar read GetData write SetData;
    function ToString: PWideChar; safecall;
    procedure SetDataWithLength(length: PRUint32; const data: PWideChar); safecall;
  end;

  nsIPrefService = interface(nsISupports)
  ['{decb9cc7-c08f-4ea5-be91-a8fc637ce2d2}']
    procedure ReadUserPrefs(aFile: nsIFile); safecall;
    procedure ResetPrefs; safecall;
    procedure ResetUserPrefs; safecall;
    procedure SavePrefFile(aFile: nsIFile); safecall;
    function GetBranch(const aPrefRoot: PAnsiChar): nsIPrefBranch; safecall;
    function GetDefaultBranch(const aPrefRoot: PAnsiChar): nsIPrefBranch; safecall;
  end;

  nsIPrintSession = interface(nsISupports)
  ['{2f977d52-5485-11d4-87e2-0010a4e75ef2}']
  end;

  nsIPrintSettings = interface(nsISupports)
  ['{5af07661-6477-4235-8814-4a45215855b8}']
    procedure SetPrintOptions(aType: PRInt32; aTurnOnOff: PRBool); safecall;
    function GetPrintOptions(aType: PRInt32): PRBool; safecall;
    function GetPrintOptionsBits: PRInt32; safecall;
    procedure GetEffectivePageSize(out aWidth: Double; out aHeight: Double); safecall;
    function Clone: nsIPrintSettings; safecall;
    procedure Assign(aPS: nsIPrintSettings); safecall;
    function GetPrintSession: nsIPrintSession; safecall;
    procedure SetPrintSession(aPrintSession: nsIPrintSession); safecall;
    property PrintSession: nsIPrintSession read GetPrintSession write SetPrintSession;
    function GetStartPageRange: PRInt32; safecall;
    procedure SetStartPageRange(aStartPageRange: PRInt32); safecall;
    property StartPageRange: PRInt32 read GetStartPageRange write SetStartPageRange;
    function GetEndPageRange: PRInt32; safecall;
    procedure SetEndPageRange(aEndPageRange: PRInt32); safecall;
    property EndPageRange: PRInt32 read GetEndPageRange write SetEndPageRange;
    function GetEdgeTop: Double; safecall;
    procedure SetEdgeTop(aEdgeTop: Double); safecall;
    property EdgeTop: Double read GetEdgeTop write SetEdgeTop;
    function GetEdgeLeft: Double; safecall;
    procedure SetEdgeLeft(aEdgeLeft: Double); safecall;
    property EdgeLeft: Double read GetEdgeLeft write SetEdgeLeft;
    function GetEdgeBottom: Double; safecall;
    procedure SetEdgeBottom(aEdgeBottom: Double); safecall;
    property EdgeBottom: Double read GetEdgeBottom write SetEdgeBottom;
    function GetEdgeRight: Double; safecall;
    procedure SetEdgeRight(aEdgeRight: Double); safecall;
    property EdgeRight: Double read GetEdgeRight write SetEdgeRight;
    function GetMarginTop: Double; safecall;
    procedure SetMarginTop(aMarginTop: Double); safecall;
    property MarginTop: Double read GetMarginTop write SetMarginTop;
    function GetMarginLeft: Double; safecall;
    procedure SetMarginLeft(aMarginLeft: Double); safecall;
    property MarginLeft: Double read GetMarginLeft write SetMarginLeft;
    function GetMarginBottom: Double; safecall;
    procedure SetMarginBottom(aMarginBottom: Double); safecall;
    property MarginBottom: Double read GetMarginBottom write SetMarginBottom;
    function GetMarginRight: Double; safecall;
    procedure SetMarginRight(aMarginRight: Double); safecall;
    property MarginRight: Double read GetMarginRight write SetMarginRight;
    function GetUnwriteableMarginTop: Double; safecall;
    procedure SetUnwriteableMarginTop(aUnwriteableMarginTop: Double); safecall;
    property UnwriteableMarginTop: Double read GetUnwriteableMarginTop write SetUnwriteableMarginTop;
    function GetUnwriteableMarginLeft: Double; safecall;
    procedure SetUnwriteableMarginLeft(aUnwriteableMarginLeft: Double); safecall;
    property UnwriteableMarginLeft: Double read GetUnwriteableMarginLeft write SetUnwriteableMarginLeft;
    function GetUnwriteableMarginBottom: Double; safecall;
    procedure SetUnwriteableMarginBottom(aUnwriteableMarginBottom: Double); safecall;
    property UnwriteableMarginBottom: Double read GetUnwriteableMarginBottom write SetUnwriteableMarginBottom;
    function GetUnwriteableMarginRight: Double; safecall;
    procedure SetUnwriteableMarginRight(aUnwriteableMarginRight: Double); safecall;
    property UnwriteableMarginRight: Double read GetUnwriteableMarginRight write SetUnwriteableMarginRight;
    function GetScaling: Double; safecall;
    procedure SetScaling(aScaling: Double); safecall;
    property Scaling: Double read GetScaling write SetScaling;
    function GetPrintBGColors: PRBool; safecall;
    procedure SetPrintBGColors(aPrintBGColors: PRBool); safecall;
    property PrintBGColors: PRBool read GetPrintBGColors write SetPrintBGColors;
    function GetPrintBGImages: PRBool; safecall;
    procedure SetPrintBGImages(aPrintBGImages: PRBool); safecall;
    property PrintBGImages: PRBool read GetPrintBGImages write SetPrintBGImages;
    function GetPrintRange: PRInt16; safecall;
    procedure SetPrintRange(aPrintRange: PRInt16); safecall;
    property PrintRange: PRInt16 read GetPrintRange write SetPrintRange;
    function GetTitle: PWideChar; safecall;
    procedure SetTitle(const aTitle: PWideChar); safecall;
    property Title: PWideChar read GetTitle write SetTitle;
    function GetDocURL: PWideChar; safecall;
    procedure SetDocURL(const aDocURL: PWideChar); safecall;
    property DocURL: PWideChar read GetDocURL write SetDocURL;
    function GetHeaderStrLeft: PWideChar; safecall;
    procedure SetHeaderStrLeft(const aHeaderStrLeft: PWideChar); safecall;
    property HeaderStrLeft: PWideChar read GetHeaderStrLeft write SetHeaderStrLeft;
    function GetHeaderStrCenter: PWideChar; safecall;
    procedure SetHeaderStrCenter(const aHeaderStrCenter: PWideChar); safecall;
    property HeaderStrCenter: PWideChar read GetHeaderStrCenter write SetHeaderStrCenter;
    function GetHeaderStrRight: PWideChar; safecall;
    procedure SetHeaderStrRight(const aHeaderStrRight: PWideChar); safecall;
    property HeaderStrRight: PWideChar read GetHeaderStrRight write SetHeaderStrRight;
    function GetFooterStrLeft: PWideChar; safecall;
    procedure SetFooterStrLeft(const aFooterStrLeft: PWideChar); safecall;
    property FooterStrLeft: PWideChar read GetFooterStrLeft write SetFooterStrLeft;
    function GetFooterStrCenter: PWideChar; safecall;
    procedure SetFooterStrCenter(const aFooterStrCenter: PWideChar); safecall;
    property FooterStrCenter: PWideChar read GetFooterStrCenter write SetFooterStrCenter;
    function GetFooterStrRight: PWideChar; safecall;
    procedure SetFooterStrRight(const aFooterStrRight: PWideChar); safecall;
    property FooterStrRight: PWideChar read GetFooterStrRight write SetFooterStrRight;
    function GetHowToEnableFrameUI: PRInt16; safecall;
    procedure SetHowToEnableFrameUI(aHowToEnableFrameUI: PRInt16); safecall;
    property HowToEnableFrameUI: PRInt16 read GetHowToEnableFrameUI write SetHowToEnableFrameUI;
    function GetIsCancelled: PRBool; safecall;
    procedure SetIsCancelled(aIsCancelled: PRBool); safecall;
    property IsCancelled: PRBool read GetIsCancelled write SetIsCancelled;
    function GetPrintFrameTypeUsage: PRInt16; safecall;
    procedure SetPrintFrameTypeUsage(aPrintFrameTypeUsage: PRInt16); safecall;
    property PrintFrameTypeUsage: PRInt16 read GetPrintFrameTypeUsage write SetPrintFrameTypeUsage;
    function GetPrintFrameType: PRInt16; safecall;
    procedure SetPrintFrameType(aPrintFrameType: PRInt16); safecall;
    property PrintFrameType: PRInt16 read GetPrintFrameType write SetPrintFrameType;
    function GetPrintSilent: PRBool; safecall;
    procedure SetPrintSilent(aPrintSilent: PRBool); safecall;
    property PrintSilent: PRBool read GetPrintSilent write SetPrintSilent;
    function GetShrinkToFit: PRBool; safecall;
    procedure SetShrinkToFit(aShrinkToFit: PRBool); safecall;
    property ShrinkToFit: PRBool read GetShrinkToFit write SetShrinkToFit;
    function GetShowPrintProgress: PRBool; safecall;
    procedure SetShowPrintProgress(aShowPrintProgress: PRBool); safecall;
    property ShowPrintProgress: PRBool read GetShowPrintProgress write SetShowPrintProgress;
    function GetPaperName: PWideChar; safecall;
    procedure SetPaperName(const aPaperName: PWideChar); safecall;
    property PaperName: PWideChar read GetPaperName write SetPaperName;
    function GetPaperSizeType: PRInt16; safecall;
    procedure SetPaperSizeType(aPaperSizeType: PRInt16); safecall;
    property PaperSizeType: PRInt16 read GetPaperSizeType write SetPaperSizeType;
    function GetPaperData: PRInt16; safecall;
    procedure SetPaperData(aPaperData: PRInt16); safecall;
    property PaperData: PRInt16 read GetPaperData write SetPaperData;
    function GetPaperWidth: Double; safecall;
    procedure SetPaperWidth(aPaperWidth: Double); safecall;
    property PaperWidth: Double read GetPaperWidth write SetPaperWidth;
    function GetPaperHeight: Double; safecall;
    procedure SetPaperHeight(aPaperHeight: Double); safecall;
    property PaperHeight: Double read GetPaperHeight write SetPaperHeight;
    function GetPaperSizeUnit: PRInt16; safecall;
    procedure SetPaperSizeUnit(aPaperSizeUnit: PRInt16); safecall;
    property PaperSizeUnit: PRInt16 read GetPaperSizeUnit write SetPaperSizeUnit;
    function GetPlexName: PWideChar; safecall;
    procedure SetPlexName(const aPlexName: PWideChar); safecall;
    property PlexName: PWideChar read GetPlexName write SetPlexName;
    function GetColorspace: PWideChar; safecall;
    procedure SetColorspace(const aColorspace: PWideChar); safecall;
    property Colorspace: PWideChar read GetColorspace write SetColorspace;
    function GetResolutionName: PWideChar; safecall;
    procedure SetResolutionName(const aResolutionName: PWideChar); safecall;
    property ResolutionName: PWideChar read GetResolutionName write SetResolutionName;
    function GetDownloadFonts: PRBool; safecall;
    procedure SetDownloadFonts(aDownloadFonts: PRBool); safecall;
    property DownloadFonts: PRBool read GetDownloadFonts write SetDownloadFonts;
    function GetPrintReversed: PRBool; safecall;
    procedure SetPrintReversed(aPrintReversed: PRBool); safecall;
    property PrintReversed: PRBool read GetPrintReversed write SetPrintReversed;
    function GetPrintInColor: PRBool; safecall;
    procedure SetPrintInColor(aPrintInColor: PRBool); safecall;
    property PrintInColor: PRBool read GetPrintInColor write SetPrintInColor;
    function GetOrientation: PRInt32; safecall;
    procedure SetOrientation(aOrientation: PRInt32); safecall;
    property Orientation: PRInt32 read GetOrientation write SetOrientation;
    function GetPrintCommand: PWideChar; safecall;
    procedure SetPrintCommand(const aPrintCommand: PWideChar); safecall;
    property PrintCommand: PWideChar read GetPrintCommand write SetPrintCommand;
    function GetNumCopies: PRInt32; safecall;
    procedure SetNumCopies(aNumCopies: PRInt32); safecall;
    property NumCopies: PRInt32 read GetNumCopies write SetNumCopies;
    function GetPrinterName: PWideChar; safecall;
    procedure SetPrinterName(const aPrinterName: PWideChar); safecall;
    property PrinterName: PWideChar read GetPrinterName write SetPrinterName;
    function GetPrintToFile: PRBool; safecall;
    procedure SetPrintToFile(aPrintToFile: PRBool); safecall;
    property PrintToFile: PRBool read GetPrintToFile write SetPrintToFile;
    function GetToFileName: PWideChar; safecall;
    procedure SetToFileName(const aToFileName: PWideChar); safecall;
    property ToFileName: PWideChar read GetToFileName write SetToFileName;
    function GetOutputFormat: PRInt16; safecall;
    procedure SetOutputFormat(aOutputFormat: PRInt16); safecall;
    property OutputFormat: PRInt16 read GetOutputFormat write SetOutputFormat;
    function GetPrintPageDelay: PRInt32; safecall;
    procedure SetPrintPageDelay(aPrintPageDelay: PRInt32); safecall;
    property PrintPageDelay: PRInt32 read GetPrintPageDelay write SetPrintPageDelay;
    function GetIsInitializedFromPrinter: PRBool; safecall;
    procedure SetIsInitializedFromPrinter(aIsInitializedFromPrinter: PRBool); safecall;
    property IsInitializedFromPrinter: PRBool read GetIsInitializedFromPrinter write SetIsInitializedFromPrinter;
    function GetIsInitializedFromPrefs: PRBool; safecall;
    procedure SetIsInitializedFromPrefs(aIsInitializedFromPrefs: PRBool); safecall;
    property IsInitializedFromPrefs: PRBool read GetIsInitializedFromPrefs write SetIsInitializedFromPrefs;
    procedure SetMarginInTwips(var aMargin: nsMargin); safecall;
    procedure SetEdgeInTwips(var aEdge: nsMargin); safecall;
    procedure GetMarginInTwips(var aMargin: nsMargin); safecall;
    procedure GetEdgeInTwips(var aEdge: nsMargin); safecall;
    procedure SetupSilentPrinting; safecall;
    procedure SetUnwriteableMarginInTwips(var aEdge: nsMargin); safecall;
    procedure GetUnwriteableMarginInTwips(var aEdge: nsMargin); safecall;
  end;

  nsIProfile = interface(nsISupports)
  ['{02b0625a-e7f3-11d2-9f5a-006008a6efe9}']
    function GetProfileCount: PRInt32; safecall;
    property ProfileCount: PRInt32 read GetProfileCount;
    procedure GetProfileList(out length: PRUint32; out profileNames_array); safecall;
    function ProfileExists(const profileName: PWideChar): PRBool; safecall;
    function GetCurrentProfile: PWideChar; safecall;
    procedure SetCurrentProfile(const aCurrentProfile: PWideChar); safecall;
    property CurrentProfile: PWideChar read GetCurrentProfile write SetCurrentProfile;
    procedure ShutDownCurrentProfile(shutDownType: PRUint32); safecall;
    procedure CreateNewProfile(const profileName: PWideChar; const nativeProfileDir: PWideChar; const langcode: PWideChar; useExistingDir: PRBool); safecall;
    procedure RenameProfile(const oldName: PWideChar; const newName: PWideChar); safecall;
    procedure DeleteProfile(const name: PWideChar; canDeleteFiles: PRBool); safecall;
    procedure CloneProfile(const profileName: PWideChar); safecall;
  end;

  nsIProfileChangeStatus = interface(nsISupports)
  ['{2f977d43-5485-11d4-87e2-0010a4e75ef2}']
    procedure VetoChange; safecall;
    procedure ChangeFailed; safecall;
  end;

  nsIProgrammingLanguage = interface(nsISupports)
  ['{ea604e90-40ba-11d5-90bb-0010a4e73d9a}']
  end;

  nsIPrompt = interface(nsISupports)
  ['{a63f70c0-148b-11d3-9333-00104ba0fd40}']
    procedure Alert(const dialogTitle: PWideChar; const text: PWideChar); safecall;
    procedure AlertCheck(const dialogTitle: PWideChar; const text: PWideChar; const checkMsg: PWideChar; out checkValue: PRBool); safecall;
    function Confirm(const dialogTitle: PWideChar; const text: PWideChar): PRBool; safecall;
    function ConfirmCheck(const dialogTitle: PWideChar; const text: PWideChar; const checkMsg: PWideChar; out checkValue: PRBool): PRBool; safecall;
    function ConfirmEx(const dialogTitle: PWideChar; const text: PWideChar; buttonFlags: PRUint32; const button0Title: PWideChar; const button1Title: PWideChar; const button2Title: PWideChar; const checkMsg: PWideChar; out checkValue: PRBool): PRInt32; safecall;
    function Prompt(const dialogTitle: PWideChar; const text: PWideChar; out value: PWideChar; const checkMsg: PWideChar; out checkValue: PRBool): PRBool; safecall;
    function PromptPassword(const dialogTitle: PWideChar; const text: PWideChar; out password: PWideChar; const checkMsg: PWideChar; out checkValue: PRBool): PRBool; safecall;
    function PromptUsernameAndPassword(const dialogTitle: PWideChar; const text: PWideChar; out username: PWideChar; out password: PWideChar; const checkMsg: PWideChar; out checkValue: PRBool): PRBool; safecall;
    function Select(const dialogTitle: PWideChar; const text: PWideChar; count: PRUint32; const selectList_array; out outSelection: PRInt32): PRBool; safecall;
  end;

  nsIPromptService = interface(nsISupports)
  ['{1630c61a-325e-49ca-8759-a31b16c47aa5}']
    procedure Alert(aParent: nsIDOMWindow; const aDialogTitle: PWideChar; const aText: PWideChar); safecall;
    procedure AlertCheck(aParent: nsIDOMWindow; const aDialogTitle: PWideChar; const aText: PWideChar; const aCheckMsg: PWideChar; out aCheckState: PRBool); safecall;
    function Confirm(aParent: nsIDOMWindow; const aDialogTitle: PWideChar; const aText: PWideChar): PRBool; safecall;
    function ConfirmCheck(aParent: nsIDOMWindow; const aDialogTitle: PWideChar; const aText: PWideChar; const aCheckMsg: PWideChar; out aCheckState: PRBool): PRBool; safecall;
    function ConfirmEx(aParent: nsIDOMWindow; const aDialogTitle: PWideChar; const aText: PWideChar; aButtonFlags: PRUint32; const aButton0Title: PWideChar; const aButton1Title: PWideChar; const aButton2Title: PWideChar; const aCheckMsg: PWideChar; out aCheckState: PRBool): PRInt32; safecall;
    function Prompt(aParent: nsIDOMWindow; const aDialogTitle: PWideChar; const aText: PWideChar; out aValue: PWideChar; const aCheckMsg: PWideChar; out aCheckState: PRBool): PRBool; safecall;
    function PromptUsernameAndPassword(aParent: nsIDOMWindow; const aDialogTitle: PWideChar; const aText: PWideChar; out aUsername: PWideChar; out aPassword: PWideChar; const aCheckMsg: PWideChar; out aCheckState: PRBool): PRBool; safecall;
    function PromptPassword(aParent: nsIDOMWindow; const aDialogTitle: PWideChar; const aText: PWideChar; out aPassword: PWideChar; const aCheckMsg: PWideChar; out aCheckState: PRBool): PRBool; safecall;
    function Select(aParent: nsIDOMWindow; const aDialogTitle: PWideChar; const aText: PWideChar; aCount: PRUint32; const aSelectList_array; out aOutSelection: PRInt32): PRBool; safecall;
  end;

  nsIProperties = interface(nsISupports)
  ['{78650582-4e93-4b60-8e85-26ebd3eb14ca}']
    procedure Get(const prop: PAnsiChar; const iid: TGUID; out _result); safecall;
    procedure _Set(const prop: PAnsiChar; value: nsISupports); safecall;
    function Has(const prop: PAnsiChar): PRBool; safecall;
    procedure Undefine(const prop: PAnsiChar); safecall;
    procedure GetKeys(out count: PRUint32; out keys_array); safecall;
  end;

  nsIProtocolHandler = interface(nsISupports)
  ['{15fd6940-8ea7-11d3-93ad-00104ba0fd40}']
    procedure GetScheme(aScheme: nsACString); safecall;
    function GetDefaultPort: PRInt32; safecall;
    property DefaultPort: PRInt32 read GetDefaultPort;
    function GetProtocolFlags: PRUint32; safecall;
    property ProtocolFlags: PRUint32 read GetProtocolFlags;
    function NewURI(const aSpec: nsAUTF8String; const aOriginCharset: PAnsiChar; aBaseURI: nsIURI): nsIURI; safecall;
    function NewChannel(aURI: nsIURI): nsIChannel; safecall;
    function AllowPort(port: PRInt32; const scheme: PAnsiChar): PRBool; safecall;
  end;

  nsIRequestObserver = interface(nsISupports)
  ['{fd91e2e0-1481-11d3-9333-00104ba0fd40}']
    procedure OnStartRequest(aRequest: nsIRequest; aContext: nsISupports); safecall;
    procedure OnStopRequest(aRequest: nsIRequest; aContext: nsISupports; aStatusCode: nsresult); safecall;
  end;

  nsIScriptableInputStream = interface(nsISupports)
  ['{e546afd6-1248-4deb-8940-4b000b618a58}']
    procedure Close; safecall;
    procedure Init(aInputStream: nsIInputStream); safecall;
    function Available: PRUint32; safecall;
    function Read(aCount: PRUint32): PAnsiChar; safecall;
    procedure readBytes(aCount: PRUint32; aReadBytes: nsACString); safecall;
  end;

  nsISecurityWarningDialogs = interface(nsISupports)
  ['{1c399d06-1dd2-11b2-bc58-c87cbcacdb78}']
    function ConfirmEnteringSecure(ctx: nsIInterfaceRequestor): PRBool; safecall;
    function ConfirmEnteringWeak(ctx: nsIInterfaceRequestor): PRBool; safecall;
    function ConfirmLeavingSecure(ctx: nsIInterfaceRequestor): PRBool; safecall;
    function ConfirmMixedMode(ctx: nsIInterfaceRequestor): PRBool; safecall;
    function ConfirmPostToInsecure(ctx: nsIInterfaceRequestor): PRBool; safecall;
    function ConfirmPostToInsecureFromSecure(ctx: nsIInterfaceRequestor): PRBool; safecall;
  end;

  nsISelection = interface(nsISupports)
  ['{b2c7ed59-8634-4352-9e37-5484c8b6e4e1}']
    function GetAnchorNode: nsIDOMNode; safecall;
    property AnchorNode: nsIDOMNode read GetAnchorNode;
    function GetAnchorOffset: PRInt32; safecall;
    property AnchorOffset: PRInt32 read GetAnchorOffset;
    function GetFocusNode: nsIDOMNode; safecall;
    property FocusNode: nsIDOMNode read GetFocusNode;
    function GetFocusOffset: PRInt32; safecall;
    property FocusOffset: PRInt32 read GetFocusOffset;
    function GetIsCollapsed: PRBool; safecall;
    property IsCollapsed: PRBool read GetIsCollapsed;
    function GetRangeCount: PRInt32; safecall;
    property RangeCount: PRInt32 read GetRangeCount;
    function GetRangeAt(index: PRInt32): nsIDOMRange; safecall;
    procedure Collapse(parentNode: nsIDOMNode; offset: PRInt32); safecall;
    procedure Extend(parentNode: nsIDOMNode; offset: PRInt32); safecall;
    procedure CollapseToStart; safecall;
    procedure CollapseToEnd; safecall;
    function ContainsNode(node: nsIDOMNode; partlyContained: PRBool): PRBool; safecall;
    procedure SelectAllChildren(parentNode: nsIDOMNode); safecall;
    procedure AddRange(range: nsIDOMRange); safecall;
    procedure RemoveRange(range: nsIDOMRange); safecall;
    procedure RemoveAllRanges; safecall;
    procedure DeleteFromDocument; safecall;
    procedure SelectionLanguageChange(langRTL: PRBool); safecall;
    function ToString: PWideChar; safecall;
  end;

  nsIServiceManager = interface(nsISupports)
  ['{8bb35ed9-e332-462d-9155-4a002ab5c958}']
    procedure GetService(const aClass: TGUID; const aIID: TGUID; out _result); safecall;
    procedure GetServiceByContractID(const aContractID: PAnsiChar; const aIID: TGUID; out _result); safecall;
    function IsServiceInstantiated(const aClass: TGUID; const aIID: TGUID): PRBool; safecall;
    function IsServiceInstantiatedByContractID(const aContractID: PAnsiChar; const aIID: TGUID): PRBool; safecall;
  end;

  nsISHistory = interface(nsISupports)
  ['{9883609f-cdd8-4d83-9b55-868ff08ad433}']
    function GetCount: PRInt32; safecall;
    property Count: PRInt32 read GetCount;
    function GetIndex: PRInt32; safecall;
    property Index: PRInt32 read GetIndex;
    function GetRequestedIndex: PRInt32; safecall;
    property RequestedIndex: PRInt32 read GetRequestedIndex;
    function GetMaxLength: PRInt32; safecall;
    procedure SetMaxLength(aMaxLength: PRInt32); safecall;
    property MaxLength: PRInt32 read GetMaxLength write SetMaxLength;
    function GetEntryAtIndex(index: PRInt32; modifyIndex: PRBool): nsIHistoryEntry; safecall;
    procedure PurgeHistory(numEntries: PRInt32); safecall;
    procedure AddSHistoryListener(aListener: nsISHistoryListener); safecall;
    procedure RemoveSHistoryListener(aListener: nsISHistoryListener); safecall;
    function GetSHistoryEnumerator: nsISimpleEnumerator; safecall;
    property SHistoryEnumerator: nsISimpleEnumerator read GetSHistoryEnumerator;
  end;

  nsISHistoryListener = interface(nsISupports)
  ['{3b07f591-e8e1-11d4-9882-00c04fa02f40}']
    procedure OnHistoryNewEntry(aNewURI: nsIURI); safecall;
    function OnHistoryGoBack(aBackURI: nsIURI): PRBool; safecall;
    function OnHistoryGoForward(aForwardURI: nsIURI): PRBool; safecall;
    function OnHistoryReload(aReloadURI: nsIURI; aReloadFlags: PRUint32): PRBool; safecall;
    function OnHistoryGotoIndex(aIndex: PRInt32; aGotoURI: nsIURI): PRBool; safecall;
    function OnHistoryPurge(aNumEntries: PRInt32): PRBool; safecall;
  end;

  nsIStreamListener = interface(nsIRequestObserver)
  ['{1a637020-1482-11d3-9333-00104ba0fd40}']
    procedure OnDataAvailable(aRequest: nsIRequest; aContext: nsISupports; aInputStream: nsIInputStream; aOffset: PRUint32; aCount: PRUint32); safecall;
  end;

  nsISupportsPrimitive = interface(nsISupports)
  ['{d0d4b136-1dd1-11b2-9371-f0727ef827c0}']
    function GetType: PRUint16; safecall;
    property _Type: PRUint16 read GetType;
  end;

  nsISupportsID = interface(nsISupportsPrimitive)
  ['{d18290a0-4a1c-11d3-9890-006008962422}']
    function GetData: PGUID; safecall;
    procedure SetData(const aData: PGUID); safecall;
    property Data: PGUID read GetData write SetData;
    function ToString: PAnsiChar; safecall;
  end;

  nsISupportsCString = interface(nsISupportsPrimitive)
  ['{d65ff270-4a1c-11d3-9890-006008962422}']
    procedure GetData(aData: nsACString); safecall;
    procedure SetData(const aData: nsACString); safecall;
    function ToString: PAnsiChar; safecall;
  end;

  nsISupportsString = interface(nsISupportsPrimitive)
  ['{d79dc970-4a1c-11d3-9890-006008962422}']
    procedure GetData(aData: nsAString); safecall;
    procedure SetData(const aData: nsAString); safecall;
    function ToString: PWideChar; safecall;
  end;

  nsISupportsPRBool = interface(nsISupportsPrimitive)
  ['{ddc3b490-4a1c-11d3-9890-006008962422}']
    function GetData: PRBool; safecall;
    procedure SetData(aData: PRBool); safecall;
    property Data: PRBool read GetData write SetData;
    function ToString: PAnsiChar; safecall;
  end;

  nsISupportsPRUint8 = interface(nsISupportsPrimitive)
  ['{dec2e4e0-4a1c-11d3-9890-006008962422}']
    function GetData: PRUint8; safecall;
    procedure SetData(aData: PRUint8); safecall;
    property Data: PRUint8 read GetData write SetData;
    function ToString: PAnsiChar; safecall;
  end;

  nsISupportsPRUint16 = interface(nsISupportsPrimitive)
  ['{dfacb090-4a1c-11d3-9890-006008962422}']
    function GetData: PRUint16; safecall;
    procedure SetData(aData: PRUint16); safecall;
    property Data: PRUint16 read GetData write SetData;
    function ToString: PAnsiChar; safecall;
  end;

  nsISupportsPRUint32 = interface(nsISupportsPrimitive)
  ['{e01dc470-4a1c-11d3-9890-006008962422}']
    function GetData: PRUint32; safecall;
    procedure SetData(aData: PRUint32); safecall;
    property Data: PRUint32 read GetData write SetData;
    function ToString: PAnsiChar; safecall;
  end;

  nsISupportsPRUint64 = interface(nsISupportsPrimitive)
  ['{e13567c0-4a1c-11d3-9890-006008962422}']
    function GetData: PRUint64; safecall;
    procedure SetData(aData: PRUint64); safecall;
    property Data: PRUint64 read GetData write SetData;
    function ToString: PAnsiChar; safecall;
  end;

  nsISupportsPRTime = interface(nsISupportsPrimitive)
  ['{e2563630-4a1c-11d3-9890-006008962422}']
    function GetData: PRTime; safecall;
    procedure SetData(aData: PRTime); safecall;
    property Data: PRTime read GetData write SetData;
    function ToString: PAnsiChar; safecall;
  end;

  nsISupportsChar = interface(nsISupportsPrimitive)
  ['{e2b05e40-4a1c-11d3-9890-006008962422}']
    function GetData: AnsiChar; safecall;
    procedure SetData(aData: AnsiChar); safecall;
    property Data: AnsiChar read GetData write SetData;
    function ToString: PAnsiChar; safecall;
  end;

  nsISupportsPRInt16 = interface(nsISupportsPrimitive)
  ['{e30d94b0-4a1c-11d3-9890-006008962422}']
    function GetData: PRInt16; safecall;
    procedure SetData(aData: PRInt16); safecall;
    property Data: PRInt16 read GetData write SetData;
    function ToString: PAnsiChar; safecall;
  end;

  nsISupportsPRInt32 = interface(nsISupportsPrimitive)
  ['{e36c5250-4a1c-11d3-9890-006008962422}']
    function GetData: PRInt32; safecall;
    procedure SetData(aData: PRInt32); safecall;
    property Data: PRInt32 read GetData write SetData;
    function ToString: PAnsiChar; safecall;
  end;

  nsISupportsPRInt64 = interface(nsISupportsPrimitive)
  ['{e3cb0ff0-4a1c-11d3-9890-006008962422}']
    function GetData: PRInt64; safecall;
    procedure SetData(aData: PRInt64); safecall;
    property Data: PRInt64 read GetData write SetData;
    function ToString: PAnsiChar; safecall;
  end;

  nsISupportsFloat = interface(nsISupportsPrimitive)
  ['{abeaa390-4ac0-11d3-baea-00805f8a5dd7}']
    function GetData: Single; safecall;
    procedure SetData(aData: Single); safecall;
    property Data: Single read GetData write SetData;
    function ToString: PAnsiChar; safecall;
  end;

  nsISupportsDouble = interface(nsISupportsPrimitive)
  ['{b32523a0-4ac0-11d3-baea-00805f8a5dd7}']
    function GetData: Double; safecall;
    procedure SetData(aData: Double); safecall;
    property Data: Double read GetData write SetData;
    function ToString: PAnsiChar; safecall;
  end;

  nsISupportsVoid = interface(nsISupportsPrimitive)
  ['{464484f0-568d-11d3-baf8-00805f8a5dd7}']
    function GetData: Pointer; safecall;
    procedure SetData(aData: Pointer); safecall;
    property Data: Pointer read GetData write SetData;
    function ToString: PAnsiChar; safecall;
  end;

  nsISupportsInterfacePointer = interface(nsISupportsPrimitive)
  ['{995ea724-1dd1-11b2-9211-c21bdd3e7ed0}']
    function GetData: nsISupports; safecall;
    procedure SetData(aData: nsISupports); safecall;
    property Data: nsISupports read GetData write SetData;
    function GetDataIID: PGUID; safecall;
    procedure SetDataIID(const aDataIID: PGUID); safecall;
    property DataIID: PGUID read GetDataIID write SetDataIID;
    function ToString: PAnsiChar; safecall;
  end;

  nsITooltipListener = interface(nsISupports)
  ['{44b78386-1dd2-11b2-9ad2-e4eee2ca1916}']
    procedure OnShowTooltip(aXCoords: PRInt32; aYCoords: PRInt32; const aTipText: PWideChar); safecall;
    procedure OnHideTooltip; safecall;
  end;

  nsITooltipTextProvider = interface(nsISupports)
  ['{b128a1e6-44f3-4331-8fbe-5af360ff21ee}']
    function GetNodeText(aNode: nsIDOMNode; out aText: PWideChar): PRBool; safecall;
  end;

  nsITraceRefcnt = interface(nsISupports)
  ['{273dc92f-0fe6-4545-96a9-21be77828039}']
    procedure LogAddRef(aPtr: Pointer; aNewRefcnt: nsrefcnt; const aTypeName: PAnsiChar; aInstanceSize: PRUint32); safecall;
    procedure LogRelease(aPtr: Pointer; aNewRefcnt: nsrefcnt; const aTypeName: PAnsiChar); safecall;
    procedure LogCtor(aPtr: Pointer; const aTypeName: PAnsiChar; aInstanceSize: PRUint32); safecall;
    procedure LogDtor(aPtr: Pointer; const aTypeName: PAnsiChar; aInstanceSize: PRUint32); safecall;
    procedure LogAddCOMPtr(aPtr: Pointer; aObject: nsISupports); safecall;
    procedure LogReleaseCOMPtr(aPtr: Pointer; aObject: nsISupports); safecall;
  end;

  nsIUnicharStreamListener = interface(nsIRequestObserver)
  ['{4a7e9b62-fef8-400d-9865-d6820f630b4c}']
    procedure OnUnicharDataAvailable(aRequest: nsIRequest; aContext: nsISupports; const aData: nsAString); safecall;
  end;

  nsIUploadChannel = interface(nsISupports)
  ['{ddf633d8-e9a4-439d-ad88-de636fd9bb75}']
    procedure SetUploadStream(aStream: nsIInputStream; const aContentType: nsACString; aContentLength: PRInt32); safecall;
    function GetUploadStream: nsIInputStream; safecall;
    property UploadStream: nsIInputStream read GetUploadStream;
  end;

  nsIURIContentListener = interface(nsISupports)
  ['{94928ab3-8b63-11d3-989d-001083010e9b}']
    function OnStartURIOpen(aURI: nsIURI): PRBool; safecall;
    function DoContent(const aContentType: PAnsiChar; aIsContentPreferred: PRBool; aRequest: nsIRequest; out aContentHandler: nsIStreamListener): PRBool; safecall;
    function IsPreferred(const aContentType: PAnsiChar; out aDesiredContentType: PAnsiChar): PRBool; safecall;
    function CanHandleContent(const aContentType: PAnsiChar; aIsContentPreferred: PRBool; out aDesiredContentType: PAnsiChar): PRBool; safecall;
    function GetLoadCookie: nsISupports; safecall;
    procedure SetLoadCookie(aLoadCookie: nsISupports); safecall;
    property LoadCookie: nsISupports read GetLoadCookie write SetLoadCookie;
    function GetParentContentListener: nsIURIContentListener; safecall;
    procedure SetParentContentListener(aParentContentListener: nsIURIContentListener); safecall;
    property ParentContentListener: nsIURIContentListener read GetParentContentListener write SetParentContentListener;
  end;

  nsIWeakReference = interface(nsISupports)
  ['{9188bc85-f92e-11d2-81ef-0060083a0bcf}']
    procedure QueryReferent(const uuid: TGUID; out _result); safecall;
  end;

  nsISupportsWeakReference = interface(nsISupports)
  ['{9188bc86-f92e-11d2-81ef-0060083a0bcf}']
    function GetWeakReference: nsIWeakReference; safecall;
  end;

  nsIWebBrowser = interface(nsISupports)
  ['{69e5df00-7b8b-11d3-af61-00a024ffc08c}']
    procedure AddWebBrowserListener(aListener: nsIWeakReference; const aIID: TGUID); safecall;
    procedure RemoveWebBrowserListener(aListener: nsIWeakReference; const aIID: TGUID); safecall;
    function GetContainerWindow: nsIWebBrowserChrome; safecall;
    procedure SetContainerWindow(aContainerWindow: nsIWebBrowserChrome); safecall;
    property ContainerWindow: nsIWebBrowserChrome read GetContainerWindow write SetContainerWindow;
    function GetParentURIContentListener: nsIURIContentListener; safecall;
    procedure SetParentURIContentListener(aParentURIContentListener: nsIURIContentListener); safecall;
    property ParentURIContentListener: nsIURIContentListener read GetParentURIContentListener write SetParentURIContentListener;
    function GetContentDOMWindow: nsIDOMWindow; safecall;
    property ContentDOMWindow: nsIDOMWindow read GetContentDOMWindow;
  end;

  nsIWebBrowserChrome = interface(nsISupports)
  ['{ba434c60-9d52-11d3-afb0-00a024ffc08c}']
    procedure SetStatus(statusType: PRUint32; const status: PWideChar); safecall;
    function GetWebBrowser: nsIWebBrowser; safecall;
    procedure SetWebBrowser(aWebBrowser: nsIWebBrowser); safecall;
    property WebBrowser: nsIWebBrowser read GetWebBrowser write SetWebBrowser;
    function GetChromeFlags: PRUint32; safecall;
    procedure SetChromeFlags(aChromeFlags: PRUint32); safecall;
    property ChromeFlags: PRUint32 read GetChromeFlags write SetChromeFlags;
    procedure DestroyBrowserWindow; safecall;
    procedure SizeBrowserTo(aCX: PRInt32; aCY: PRInt32); safecall;
    procedure ShowAsModal; safecall;
    function IsWindowModal: PRBool; safecall;
    procedure ExitModalEventLoop(aStatus: nsresult); safecall;
  end;

  nsIWebBrowserChromeFocus = interface(nsISupports)
  ['{d2206418-1dd1-11b2-8e55-acddcd2bcfb8}']
    procedure FocusNextElement; safecall;
    procedure FocusPrevElement; safecall;
  end;

  nsIWebBrowserFind = interface(nsISupports)
  ['{2f977d44-5485-11d4-87e2-0010a4e75ef2}']
    function FindNext: PRBool; safecall;
    function GetSearchString: PWideChar; safecall;
    procedure SetSearchString(const aSearchString: PWideChar); safecall;
    property SearchString: PWideChar read GetSearchString write SetSearchString;
    function GetFindBackwards: PRBool; safecall;
    procedure SetFindBackwards(aFindBackwards: PRBool); safecall;
    property FindBackwards: PRBool read GetFindBackwards write SetFindBackwards;
    function GetWrapFind: PRBool; safecall;
    procedure SetWrapFind(aWrapFind: PRBool); safecall;
    property WrapFind: PRBool read GetWrapFind write SetWrapFind;
    function GetEntireWord: PRBool; safecall;
    procedure SetEntireWord(aEntireWord: PRBool); safecall;
    property EntireWord: PRBool read GetEntireWord write SetEntireWord;
    function GetMatchCase: PRBool; safecall;
    procedure SetMatchCase(aMatchCase: PRBool); safecall;
    property MatchCase: PRBool read GetMatchCase write SetMatchCase;
    function GetSearchFrames: PRBool; safecall;
    procedure SetSearchFrames(aSearchFrames: PRBool); safecall;
    property SearchFrames: PRBool read GetSearchFrames write SetSearchFrames;
  end;

  nsIWebBrowserFindInFrames = interface(nsISupports)
  ['{e0f5d182-34bc-11d5-be5b-b760676c6ebc}']
    function GetCurrentSearchFrame: nsIDOMWindow; safecall;
    procedure SetCurrentSearchFrame(aCurrentSearchFrame: nsIDOMWindow); safecall;
    property CurrentSearchFrame: nsIDOMWindow read GetCurrentSearchFrame write SetCurrentSearchFrame;
    function GetRootSearchFrame: nsIDOMWindow; safecall;
    procedure SetRootSearchFrame(aRootSearchFrame: nsIDOMWindow); safecall;
    property RootSearchFrame: nsIDOMWindow read GetRootSearchFrame write SetRootSearchFrame;
    function GetSearchSubframes: PRBool; safecall;
    procedure SetSearchSubframes(aSearchSubframes: PRBool); safecall;
    property SearchSubframes: PRBool read GetSearchSubframes write SetSearchSubframes;
    function GetSearchParentFrames: PRBool; safecall;
    procedure SetSearchParentFrames(aSearchParentFrames: PRBool); safecall;
    property SearchParentFrames: PRBool read GetSearchParentFrames write SetSearchParentFrames;
  end;

  nsIWebBrowserFocus = interface(nsISupports)
  ['{9c5d3c58-1dd1-11b2-a1c9-f3699284657a}']
    procedure Activate; safecall;
    procedure Deactivate; safecall;
    procedure SetFocusAtFirstElement; safecall;
    procedure SetFocusAtLastElement; safecall;
    function GetFocusedWindow: nsIDOMWindow; safecall;
    procedure SetFocusedWindow(aFocusedWindow: nsIDOMWindow); safecall;
    property FocusedWindow: nsIDOMWindow read GetFocusedWindow write SetFocusedWindow;
    function GetFocusedElement: nsIDOMElement; safecall;
    procedure SetFocusedElement(aFocusedElement: nsIDOMElement); safecall;
    property FocusedElement: nsIDOMElement read GetFocusedElement write SetFocusedElement;
  end;

  nsIWebBrowserPrint = interface(nsISupports)
  ['{9a7ca4b0-fbba-11d4-a869-00105a183419}']
    function GetGlobalPrintSettings: nsIPrintSettings; safecall;
    property GlobalPrintSettings: nsIPrintSettings read GetGlobalPrintSettings;
    function GetCurrentPrintSettings: nsIPrintSettings; safecall;
    property CurrentPrintSettings: nsIPrintSettings read GetCurrentPrintSettings;
    function GetCurrentChildDOMWindow: nsIDOMWindow; safecall;
    property CurrentChildDOMWindow: nsIDOMWindow read GetCurrentChildDOMWindow;
    function GetDoingPrint: PRBool; safecall;
    property DoingPrint: PRBool read GetDoingPrint;
    function GetDoingPrintPreview: PRBool; safecall;
    property DoingPrintPreview: PRBool read GetDoingPrintPreview;
    function GetIsFramesetDocument: PRBool; safecall;
    property IsFramesetDocument: PRBool read GetIsFramesetDocument;
    function GetIsFramesetFrameSelected: PRBool; safecall;
    property IsFramesetFrameSelected: PRBool read GetIsFramesetFrameSelected;
    function GetIsIFrameSelected: PRBool; safecall;
    property IsIFrameSelected: PRBool read GetIsIFrameSelected;
    function GetIsRangeSelection: PRBool; safecall;
    property IsRangeSelection: PRBool read GetIsRangeSelection;
    function GetPrintPreviewNumPages: PRInt32; safecall;
    property PrintPreviewNumPages: PRInt32 read GetPrintPreviewNumPages;
    procedure Print(aThePrintSettings: nsIPrintSettings; aWPListener: nsIWebProgressListener); safecall;
    procedure PrintPreview(aThePrintSettings: nsIPrintSettings; aChildDOMWin: nsIDOMWindow; aWPListener: nsIWebProgressListener); safecall;
    procedure PrintPreviewNavigate(aNavType: PRInt16; aPageNum: PRInt32); safecall;
    procedure Cancel; safecall;
    procedure EnumerateDocumentNames(out aCount: PRUint32; out aResult_array); safecall;
    procedure ExitPrintPreview; safecall;
  end;

  nsIWebBrowserSetup = interface(nsISupports)
  ['{f15398a0-8018-11d3-af70-00a024ffc08c}']
    procedure SetProperty(aId: PRUint32; aValue: PRUint32); safecall;
  end;

  nsIWebBrowserStream = interface(nsISupports)
  ['{86d02f0e-219b-4cfc-9c88-bd98d2cce0b8}']
    procedure OpenStream(aBaseURI: nsIURI; const aContentType: nsACString); safecall;
    procedure AppendToStream(const aData_array; aLen: PRUint32); safecall;
    procedure CloseStream; safecall;
  end;

  nsIWebProgress = interface(nsISupports)
  ['{570f39d0-efd0-11d3-b093-00a024ffc08c}']
    procedure AddProgressListener(aListener: nsIWebProgressListener; aNotifyMask: PRUint32); safecall;
    procedure RemoveProgressListener(aListener: nsIWebProgressListener); safecall;
    function GetDOMWindow: nsIDOMWindow; safecall;
    property DOMWindow: nsIDOMWindow read GetDOMWindow;
    function GetIsLoadingDocument: PRBool; safecall;
    property IsLoadingDocument: PRBool read GetIsLoadingDocument;
  end;

  nsIWebProgressListener = interface(nsISupports)
  ['{570f39d1-efd0-11d3-b093-00a024ffc08c}']
    procedure OnStateChange(aWebProgress: nsIWebProgress; aRequest: nsIRequest; aStateFlags: PRUint32; aStatus: nsresult); safecall;
    procedure OnProgressChange(aWebProgress: nsIWebProgress; aRequest: nsIRequest; aCurSelfProgress: PRInt32; aMaxSelfProgress: PRInt32; aCurTotalProgress: PRInt32; aMaxTotalProgress: PRInt32); safecall;
    procedure OnLocationChange(aWebProgress: nsIWebProgress; aRequest: nsIRequest; aLocation: nsIURI); safecall;
    procedure OnStatusChange(aWebProgress: nsIWebProgress; aRequest: nsIRequest; aStatus: nsresult; const aMessage: PWideChar); safecall;
    procedure OnSecurityChange(aWebProgress: nsIWebProgress; aRequest: nsIRequest; aState: PRUint32); safecall;
  end;

  nsIWindowCreator = interface(nsISupports)
  ['{30465632-a777-44cc-90f9-8145475ef999}']
    function CreateChromeWindow(parent: nsIWebBrowserChrome; chromeFlags: PRUint32): nsIWebBrowserChrome; safecall;
  end;

  nsIWindowWatcher = interface(nsISupports)
  ['{002286a8-494b-43b3-8ddd-49e3fc50622b}']
    function OpenWindow(aParent: nsIDOMWindow; const aUrl: PAnsiChar; const aName: PAnsiChar; const aFeatures: PAnsiChar; aArguments: nsISupports): nsIDOMWindow; safecall;
    procedure RegisterNotification(aObserver: nsIObserver); safecall;
    procedure UnregisterNotification(aObserver: nsIObserver); safecall;
    function GetWindowEnumerator: nsISimpleEnumerator; safecall;
    function GetNewPrompter(aParent: nsIDOMWindow): nsIPrompt; safecall;
    function GetNewAuthPrompter(aParent: nsIDOMWindow): nsIAuthPrompt; safecall;
    procedure SetWindowCreator(creator: nsIWindowCreator); safecall;
    function GetChromeForWindow(aWindow: nsIDOMWindow): nsIWebBrowserChrome; safecall;
    function GetWindowByName(const aTargetName: PWideChar; aCurrentWindow: nsIDOMWindow): nsIDOMWindow; safecall;
    function GetActiveWindow: nsIDOMWindow; safecall;
    procedure SetActiveWindow(aActiveWindow: nsIDOMWindow); safecall;
    property ActiveWindow: nsIDOMWindow read GetActiveWindow write SetActiveWindow;
  end;

  nsIX509Cert = interface(nsISupports)
  ['{f0980f60-ee3d-11d4-998b-00b0d02354a0}']
    procedure GetNickname(aNickname: nsAString); safecall;
    procedure GetEmailAddress(aEmailAddress: nsAString); safecall;
    procedure GetEmailAddresses(out length: PRUint32; out addresses_array); safecall;
    function ContainsEmailAddress(const aEmailAddress: nsAString): PRBool; safecall;
    procedure GetSubjectName(aSubjectName: nsAString); safecall;
    procedure GetCommonName(aCommonName: nsAString); safecall;
    procedure GetOrganization(aOrganization: nsAString); safecall;
    procedure GetOrganizationalUnit(aOrganizationalUnit: nsAString); safecall;
    procedure GetSha1Fingerprint(aSha1Fingerprint: nsAString); safecall;
    procedure GetMd5Fingerprint(aMd5Fingerprint: nsAString); safecall;
    procedure GetTokenName(aTokenName: nsAString); safecall;
    procedure GetIssuerName(aIssuerName: nsAString); safecall;
    procedure GetSerialNumber(aSerialNumber: nsAString); safecall;
    procedure GetIssuerCommonName(aIssuerCommonName: nsAString); safecall;
    procedure GetIssuerOrganization(aIssuerOrganization: nsAString); safecall;
    procedure GetIssuerOrganizationUnit(aIssuerOrganizationUnit: nsAString); safecall;
    function GetIssuer: nsIX509Cert; safecall;
    property Issuer: nsIX509Cert read GetIssuer;
    function GetValidity: nsIX509CertValidity; safecall;
    property Validity: nsIX509CertValidity read GetValidity;
    function GetDbKey: PAnsiChar; safecall;
    property DbKey: PAnsiChar read GetDbKey;
    function GetWindowTitle: PAnsiChar; safecall;
    property WindowTitle: PAnsiChar read GetWindowTitle;
    function GetChain: nsIArray; safecall;
    procedure GetUsagesArray(ignoreOcsp: PRBool; out verified: PRUint32; out count: PRUint32; out usages_array); safecall;
    procedure GetUsagesString(ignoreOcsp: PRBool; out verified: PRUint32; usages: nsAString); safecall;
    function VerifyForUsage(usage: PRUint32): PRUint32; safecall;
    function GetASN1Structure: nsIASN1Object; safecall;
    property ASN1Structure: nsIASN1Object read GetASN1Structure;
    procedure GetRawDER(out length: PRUint32; out data_array); safecall;
    function Equals(other: nsIX509Cert): PRBool; safecall;
  end;

  nsIX509CertDB = interface(nsISupports)
  ['{da48b3c0-1284-11d5-ac67-000064657374}']
    function FindCertByNickname(aToken: nsISupports; const aNickname: nsAString): nsIX509Cert; safecall;
    function FindCertByDBKey(const aDBkey: PAnsiChar; aToken: nsISupports): nsIX509Cert; safecall;
    procedure FindCertNicknames(aToken: nsISupports; aType: PRUint32; out count: PRUint32; out certNameList_array); safecall;
    function FindEmailEncryptionCert(const aNickname: nsAString): nsIX509Cert; safecall;
    function FindEmailSigningCert(const aNickname: nsAString): nsIX509Cert; safecall;
    function FindCertByEmailAddress(aToken: nsISupports; const aEmailAddress: PAnsiChar): nsIX509Cert; safecall;
    procedure ImportCertificates(const data_array; length: PRUint32; _type: PRUint32; ctx: nsIInterfaceRequestor); safecall;
    procedure ImportEmailCertificate(const data_array; length: PRUint32; ctx: nsIInterfaceRequestor); safecall;
    procedure ImportServerCertificate(const data_array; length: PRUint32; ctx: nsIInterfaceRequestor); safecall;
    procedure ImportUserCertificate(const data_array; length: PRUint32; ctx: nsIInterfaceRequestor); safecall;
    procedure DeleteCertificate(aCert: nsIX509Cert); safecall;
    procedure SetCertTrust(cert: nsIX509Cert; _type: PRUint32; trust: PRUint32); safecall;
    function IsCertTrusted(cert: nsIX509Cert; certType: PRUint32; trustType: PRUint32): PRBool; safecall;
    procedure ImportCertsFromFile(aToken: nsISupports; aFile: nsILocalFile; aType: PRUint32); safecall;
    procedure ImportPKCS12File(aToken: nsISupports; aFile: nsILocalFile); safecall;
    procedure ExportPKCS12File(aToken: nsISupports; aFile: nsILocalFile; count: PRUint32; const aCerts_array); safecall;
    function GetOCSPResponders: nsIArray; safecall;
    function GetIsOcspOn: PRBool; safecall;
    property IsOcspOn: PRBool read GetIsOcspOn;
    function ConstructX509FromBase64(const base64: PAnsiChar): nsIX509Cert; safecall;
  end;

  nsIX509CertValidity = interface(nsISupports)
  ['{e701dfd8-1dd1-11b2-a172-ffa6cc6156ad}']
    function GetNotBefore: PRTime; safecall;
    property NotBefore: PRTime read GetNotBefore;
    procedure GetNotBeforeLocalTime(aNotBeforeLocalTime: nsAString); safecall;
    procedure GetNotBeforeLocalDay(aNotBeforeLocalDay: nsAString); safecall;
    procedure GetNotBeforeGMT(aNotBeforeGMT: nsAString); safecall;
    function GetNotAfter: PRTime; safecall;
    property NotAfter: PRTime read GetNotAfter;
    procedure GetNotAfterLocalTime(aNotAfterLocalTime: nsAString); safecall;
    procedure GetNotAfterLocalDay(aNotAfterLocalDay: nsAString); safecall;
    procedure GetNotAfterGMT(aNotAfterGMT: nsAString); safecall;
  end;

implementation

end.
