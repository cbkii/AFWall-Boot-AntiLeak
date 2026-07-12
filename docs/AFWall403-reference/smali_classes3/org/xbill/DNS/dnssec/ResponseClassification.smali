.class final enum Lorg/xbill/DNS/dnssec/ResponseClassification;
.super Ljava/lang/Enum;
.source "ResponseClassification.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/xbill/DNS/dnssec/ResponseClassification;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/xbill/DNS/dnssec/ResponseClassification;

.field public static final enum ANY:Lorg/xbill/DNS/dnssec/ResponseClassification;

.field public static final enum CNAME:Lorg/xbill/DNS/dnssec/ResponseClassification;

.field public static final enum CNAME_NAMEERROR:Lorg/xbill/DNS/dnssec/ResponseClassification;

.field public static final enum CNAME_NODATA:Lorg/xbill/DNS/dnssec/ResponseClassification;

.field public static final enum NAMEERROR:Lorg/xbill/DNS/dnssec/ResponseClassification;

.field public static final enum NODATA:Lorg/xbill/DNS/dnssec/ResponseClassification;

.field public static final enum POSITIVE:Lorg/xbill/DNS/dnssec/ResponseClassification;

.field public static final enum REFERRAL:Lorg/xbill/DNS/dnssec/ResponseClassification;

.field public static final enum UNKNOWN:Lorg/xbill/DNS/dnssec/ResponseClassification;


# direct methods
.method private static synthetic $values()[Lorg/xbill/DNS/dnssec/ResponseClassification;
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Lorg/xbill/DNS/dnssec/ResponseClassification;

    const/4 v1, 0x0

    sget-object v2, Lorg/xbill/DNS/dnssec/ResponseClassification;->UNKNOWN:Lorg/xbill/DNS/dnssec/ResponseClassification;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/xbill/DNS/dnssec/ResponseClassification;->POSITIVE:Lorg/xbill/DNS/dnssec/ResponseClassification;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/xbill/DNS/dnssec/ResponseClassification;->CNAME:Lorg/xbill/DNS/dnssec/ResponseClassification;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lorg/xbill/DNS/dnssec/ResponseClassification;->NODATA:Lorg/xbill/DNS/dnssec/ResponseClassification;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lorg/xbill/DNS/dnssec/ResponseClassification;->NAMEERROR:Lorg/xbill/DNS/dnssec/ResponseClassification;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lorg/xbill/DNS/dnssec/ResponseClassification;->ANY:Lorg/xbill/DNS/dnssec/ResponseClassification;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/xbill/DNS/dnssec/ResponseClassification;->CNAME_NODATA:Lorg/xbill/DNS/dnssec/ResponseClassification;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/xbill/DNS/dnssec/ResponseClassification;->CNAME_NAMEERROR:Lorg/xbill/DNS/dnssec/ResponseClassification;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/xbill/DNS/dnssec/ResponseClassification;->REFERRAL:Lorg/xbill/DNS/dnssec/ResponseClassification;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 14
    new-instance v0, Lorg/xbill/DNS/dnssec/ResponseClassification;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/xbill/DNS/dnssec/ResponseClassification;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xbill/DNS/dnssec/ResponseClassification;->UNKNOWN:Lorg/xbill/DNS/dnssec/ResponseClassification;

    .line 17
    new-instance v0, Lorg/xbill/DNS/dnssec/ResponseClassification;

    const-string v1, "POSITIVE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/xbill/DNS/dnssec/ResponseClassification;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xbill/DNS/dnssec/ResponseClassification;->POSITIVE:Lorg/xbill/DNS/dnssec/ResponseClassification;

    .line 20
    new-instance v0, Lorg/xbill/DNS/dnssec/ResponseClassification;

    const-string v1, "CNAME"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/xbill/DNS/dnssec/ResponseClassification;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xbill/DNS/dnssec/ResponseClassification;->CNAME:Lorg/xbill/DNS/dnssec/ResponseClassification;

    .line 23
    new-instance v0, Lorg/xbill/DNS/dnssec/ResponseClassification;

    const-string v1, "NODATA"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/xbill/DNS/dnssec/ResponseClassification;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xbill/DNS/dnssec/ResponseClassification;->NODATA:Lorg/xbill/DNS/dnssec/ResponseClassification;

    .line 26
    new-instance v0, Lorg/xbill/DNS/dnssec/ResponseClassification;

    const-string v1, "NAMEERROR"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lorg/xbill/DNS/dnssec/ResponseClassification;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xbill/DNS/dnssec/ResponseClassification;->NAMEERROR:Lorg/xbill/DNS/dnssec/ResponseClassification;

    .line 29
    new-instance v0, Lorg/xbill/DNS/dnssec/ResponseClassification;

    const-string v1, "ANY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/xbill/DNS/dnssec/ResponseClassification;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xbill/DNS/dnssec/ResponseClassification;->ANY:Lorg/xbill/DNS/dnssec/ResponseClassification;

    .line 32
    new-instance v0, Lorg/xbill/DNS/dnssec/ResponseClassification;

    const-string v1, "CNAME_NODATA"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/xbill/DNS/dnssec/ResponseClassification;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xbill/DNS/dnssec/ResponseClassification;->CNAME_NODATA:Lorg/xbill/DNS/dnssec/ResponseClassification;

    .line 35
    new-instance v0, Lorg/xbill/DNS/dnssec/ResponseClassification;

    const-string v1, "CNAME_NAMEERROR"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/xbill/DNS/dnssec/ResponseClassification;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xbill/DNS/dnssec/ResponseClassification;->CNAME_NAMEERROR:Lorg/xbill/DNS/dnssec/ResponseClassification;

    .line 38
    new-instance v0, Lorg/xbill/DNS/dnssec/ResponseClassification;

    const-string v1, "REFERRAL"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/xbill/DNS/dnssec/ResponseClassification;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xbill/DNS/dnssec/ResponseClassification;->REFERRAL:Lorg/xbill/DNS/dnssec/ResponseClassification;

    .line 12
    invoke-static {}, Lorg/xbill/DNS/dnssec/ResponseClassification;->$values()[Lorg/xbill/DNS/dnssec/ResponseClassification;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/dnssec/ResponseClassification;->$VALUES:[Lorg/xbill/DNS/dnssec/ResponseClassification;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/xbill/DNS/dnssec/ResponseClassification;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lorg/xbill/DNS/dnssec/ResponseClassification;

    .line 12
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/xbill/DNS/dnssec/ResponseClassification;

    return-object p0
.end method

.method public static values()[Lorg/xbill/DNS/dnssec/ResponseClassification;
    .locals 1

    sget-object v0, Lorg/xbill/DNS/dnssec/ResponseClassification;->$VALUES:[Lorg/xbill/DNS/dnssec/ResponseClassification;

    .line 12
    invoke-virtual {v0}, [Lorg/xbill/DNS/dnssec/ResponseClassification;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/xbill/DNS/dnssec/ResponseClassification;

    return-object v0
.end method
