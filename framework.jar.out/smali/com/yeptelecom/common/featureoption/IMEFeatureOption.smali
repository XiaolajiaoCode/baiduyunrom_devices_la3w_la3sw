.class public final Lcom/yeptelecom/common/featureoption/IMEFeatureOption;
.super Ljava/lang/Object;
.source "IMEFeatureOption.java"


# static fields
.field public static final DEFAULT_INPUT_METHOD:Ljava/lang/String; = "com.sohu.inputmethod.sogou.SogouIME"

.field public static final DEFAULT_LATIN_IME_LANGUAGES:[Ljava/lang/String; = null

.field public static final PRODUCT_LOCALES:[Ljava/lang/String; = null

.field public static final SYS_LOCALE_AR:Z = true

.field public static final SYS_LOCALE_AR_EG:Z = true

.field public static final SYS_LOCALE_CS:Z = true

.field public static final SYS_LOCALE_CS_CZ:Z = true

.field public static final SYS_LOCALE_DE:Z = true

.field public static final SYS_LOCALE_DE_AT:Z = false

.field public static final SYS_LOCALE_DE_CH:Z = false

.field public static final SYS_LOCALE_DE_DE:Z = true

.field public static final SYS_LOCALE_DE_LI:Z = false

.field public static final SYS_LOCALE_EL:Z = true

.field public static final SYS_LOCALE_EL_GR:Z = true

.field public static final SYS_LOCALE_EN:Z = true

.field public static final SYS_LOCALE_EN_AU:Z = false

.field public static final SYS_LOCALE_EN_GB:Z = false

.field public static final SYS_LOCALE_EN_NZ:Z = false

.field public static final SYS_LOCALE_EN_SG:Z = false

.field public static final SYS_LOCALE_EN_US:Z = true

.field public static final SYS_LOCALE_ES:Z = true

.field public static final SYS_LOCALE_ES_ES:Z = true

.field public static final SYS_LOCALE_FR:Z = true

.field public static final SYS_LOCALE_FR_BE:Z = false

.field public static final SYS_LOCALE_FR_CA:Z = false

.field public static final SYS_LOCALE_FR_CH:Z = false

.field public static final SYS_LOCALE_FR_FR:Z = true

.field public static final SYS_LOCALE_HU:Z = true

.field public static final SYS_LOCALE_HU_HU:Z = true

.field public static final SYS_LOCALE_IN:Z = true

.field public static final SYS_LOCALE_IN_ID:Z = true

.field public static final SYS_LOCALE_IT:Z = true

.field public static final SYS_LOCALE_IT_CH:Z = false

.field public static final SYS_LOCALE_IT_IT:Z = true

.field public static final SYS_LOCALE_JA:Z = false

.field public static final SYS_LOCALE_JA_JP:Z = false

.field public static final SYS_LOCALE_KO:Z = false

.field public static final SYS_LOCALE_KO_KR:Z = false

.field public static final SYS_LOCALE_MS:Z = true

.field public static final SYS_LOCALE_MS_MY:Z = true

.field public static final SYS_LOCALE_NL:Z = true

.field public static final SYS_LOCALE_NL_BE:Z = false

.field public static final SYS_LOCALE_NL_NL:Z = true

.field public static final SYS_LOCALE_PL:Z = false

.field public static final SYS_LOCALE_PL_PL:Z = false

.field public static final SYS_LOCALE_PT:Z = true

.field public static final SYS_LOCALE_PT_BR:Z = true

.field public static final SYS_LOCALE_PT_PT:Z = true

.field public static final SYS_LOCALE_RO:Z = true

.field public static final SYS_LOCALE_RO_RO:Z = true

.field public static final SYS_LOCALE_RU:Z = true

.field public static final SYS_LOCALE_RU_RU:Z = true

.field public static final SYS_LOCALE_TH:Z = true

.field public static final SYS_LOCALE_TH_TH:Z = true

.field public static final SYS_LOCALE_TL:Z = true

.field public static final SYS_LOCALE_TL_PH:Z = true

.field public static final SYS_LOCALE_TR:Z = true

.field public static final SYS_LOCALE_TR_TR:Z = true

.field public static final SYS_LOCALE_VI:Z = true

.field public static final SYS_LOCALE_VI_VN:Z = true

.field public static final SYS_LOCALE_ZH:Z = true

.field public static final SYS_LOCALE_ZH_CN:Z = true

.field public static final SYS_LOCALE_ZH_TW:Z = true

.field public static final YEP_IME_ARABIC_SUPPORT:Z = false

.field public static final YEP_IME_ENGLISH_SUPPORT:Z = true

.field public static final YEP_IME_FRENCH_SUPPORT:Z = false

.field public static final YEP_IME_GERMAN_SUPPORT:Z = false

.field public static final YEP_IME_HANDWRITING_SUPPORT:Z = true

.field public static final YEP_IME_HINDI_SUPPORT:Z = false

.field public static final YEP_IME_INDONESIAN_SUPPORT:Z = false

.field public static final YEP_IME_ITALIAN_SUPPORT:Z = false

.field public static final YEP_IME_MALAY_SUPPORT:Z = false

.field public static final YEP_IME_PINYIN_SUPPORT:Z = true

.field public static final YEP_IME_PORTUGUESE_SUPPORT:Z = false

.field public static final YEP_IME_RUSSIAN_SUPPORT:Z = false

.field public static final YEP_IME_SPANISH_SUPPORT:Z = false

.field public static final YEP_IME_STROKE_SUPPORT:Z = true

.field public static final YEP_IME_SUPPORT:Z = false

.field public static final YEP_IME_THAI_SUPPORT:Z = false

.field public static final YEP_IME_TURKISH_SUPPORT:Z = false

.field public static final YEP_IME_VIETNAM_SUPPORT:Z = false

.field public static final YEP_IME_ZHUYIN_SUPPORT:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "en_US"

    aput-object v1, v0, v3

    const-string v1, "es_ES"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string/jumbo v2, "zh_CN"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "zh_TW"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "ru_RU"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "pt_BR"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "fr_FR"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "de_DE"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "tr_TR"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "it_IT"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "in_ID"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "ms_MY"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "vi_VN"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "ar_EG"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "th_TH"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "pt_PT"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "nl_NL"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "el_GR"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "hu_HU"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "tl_PH"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "ro_RO"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "cs_CZ"

    aput-object v2, v0, v1

    sput-object v0, Lcom/yeptelecom/common/featureoption/IMEFeatureOption;->PRODUCT_LOCALES:[Ljava/lang/String;

    .line 35
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "en_US"

    aput-object v1, v0, v3

    sput-object v0, Lcom/yeptelecom/common/featureoption/IMEFeatureOption;->DEFAULT_LATIN_IME_LANGUAGES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
