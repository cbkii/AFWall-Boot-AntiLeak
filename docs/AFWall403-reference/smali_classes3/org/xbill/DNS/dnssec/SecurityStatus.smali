.class public final enum Lorg/xbill/DNS/dnssec/SecurityStatus;
.super Ljava/lang/Enum;
.source "SecurityStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/xbill/DNS/dnssec/SecurityStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/xbill/DNS/dnssec/SecurityStatus;

.field public static final enum BOGUS:Lorg/xbill/DNS/dnssec/SecurityStatus;

.field public static final enum INDETERMINATE:Lorg/xbill/DNS/dnssec/SecurityStatus;

.field public static final enum INSECURE:Lorg/xbill/DNS/dnssec/SecurityStatus;

.field public static final enum SECURE:Lorg/xbill/DNS/dnssec/SecurityStatus;

.field public static final enum UNCHECKED:Lorg/xbill/DNS/dnssec/SecurityStatus;


# direct methods
.method private static synthetic $values()[Lorg/xbill/DNS/dnssec/SecurityStatus;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/xbill/DNS/dnssec/SecurityStatus;

    const/4 v1, 0x0

    sget-object v2, Lorg/xbill/DNS/dnssec/SecurityStatus;->UNCHECKED:Lorg/xbill/DNS/dnssec/SecurityStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/xbill/DNS/dnssec/SecurityStatus;->BOGUS:Lorg/xbill/DNS/dnssec/SecurityStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/xbill/DNS/dnssec/SecurityStatus;->INDETERMINATE:Lorg/xbill/DNS/dnssec/SecurityStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lorg/xbill/DNS/dnssec/SecurityStatus;->INSECURE:Lorg/xbill/DNS/dnssec/SecurityStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lorg/xbill/DNS/dnssec/SecurityStatus;->SECURE:Lorg/xbill/DNS/dnssec/SecurityStatus;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 13
    new-instance v0, Lorg/xbill/DNS/dnssec/SecurityStatus;

    const-string v1, "UNCHECKED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/xbill/DNS/dnssec/SecurityStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xbill/DNS/dnssec/SecurityStatus;->UNCHECKED:Lorg/xbill/DNS/dnssec/SecurityStatus;

    .line 19
    new-instance v0, Lorg/xbill/DNS/dnssec/SecurityStatus;

    const-string v1, "BOGUS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/xbill/DNS/dnssec/SecurityStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xbill/DNS/dnssec/SecurityStatus;->BOGUS:Lorg/xbill/DNS/dnssec/SecurityStatus;

    .line 25
    new-instance v0, Lorg/xbill/DNS/dnssec/SecurityStatus;

    const-string v1, "INDETERMINATE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/xbill/DNS/dnssec/SecurityStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xbill/DNS/dnssec/SecurityStatus;->INDETERMINATE:Lorg/xbill/DNS/dnssec/SecurityStatus;

    .line 31
    new-instance v0, Lorg/xbill/DNS/dnssec/SecurityStatus;

    const-string v1, "INSECURE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/xbill/DNS/dnssec/SecurityStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xbill/DNS/dnssec/SecurityStatus;->INSECURE:Lorg/xbill/DNS/dnssec/SecurityStatus;

    .line 34
    new-instance v0, Lorg/xbill/DNS/dnssec/SecurityStatus;

    const-string v1, "SECURE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lorg/xbill/DNS/dnssec/SecurityStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xbill/DNS/dnssec/SecurityStatus;->SECURE:Lorg/xbill/DNS/dnssec/SecurityStatus;

    .line 11
    invoke-static {}, Lorg/xbill/DNS/dnssec/SecurityStatus;->$values()[Lorg/xbill/DNS/dnssec/SecurityStatus;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/dnssec/SecurityStatus;->$VALUES:[Lorg/xbill/DNS/dnssec/SecurityStatus;

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

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/xbill/DNS/dnssec/SecurityStatus;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lorg/xbill/DNS/dnssec/SecurityStatus;

    .line 11
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/xbill/DNS/dnssec/SecurityStatus;

    return-object p0
.end method

.method public static values()[Lorg/xbill/DNS/dnssec/SecurityStatus;
    .locals 1

    sget-object v0, Lorg/xbill/DNS/dnssec/SecurityStatus;->$VALUES:[Lorg/xbill/DNS/dnssec/SecurityStatus;

    .line 11
    invoke-virtual {v0}, [Lorg/xbill/DNS/dnssec/SecurityStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/xbill/DNS/dnssec/SecurityStatus;

    return-object v0
.end method
