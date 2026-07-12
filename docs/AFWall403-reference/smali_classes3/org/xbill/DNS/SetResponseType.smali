.class final enum Lorg/xbill/DNS/SetResponseType;
.super Ljava/lang/Enum;
.source "SetResponseType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/xbill/DNS/SetResponseType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/xbill/DNS/SetResponseType;

.field public static final enum CNAME:Lorg/xbill/DNS/SetResponseType;

.field public static final enum DELEGATION:Lorg/xbill/DNS/SetResponseType;

.field public static final enum DNAME:Lorg/xbill/DNS/SetResponseType;

.field public static final enum NXDOMAIN:Lorg/xbill/DNS/SetResponseType;

.field public static final enum NXRRSET:Lorg/xbill/DNS/SetResponseType;

.field public static final enum SUCCESSFUL:Lorg/xbill/DNS/SetResponseType;

.field public static final enum UNKNOWN:Lorg/xbill/DNS/SetResponseType;


# instance fields
.field private final isSealed:Z

.field private final printRecords:Z


# direct methods
.method private static synthetic $values()[Lorg/xbill/DNS/SetResponseType;
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Lorg/xbill/DNS/SetResponseType;

    const/4 v1, 0x0

    sget-object v2, Lorg/xbill/DNS/SetResponseType;->UNKNOWN:Lorg/xbill/DNS/SetResponseType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/xbill/DNS/SetResponseType;->NXDOMAIN:Lorg/xbill/DNS/SetResponseType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/xbill/DNS/SetResponseType;->NXRRSET:Lorg/xbill/DNS/SetResponseType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lorg/xbill/DNS/SetResponseType;->DELEGATION:Lorg/xbill/DNS/SetResponseType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lorg/xbill/DNS/SetResponseType;->CNAME:Lorg/xbill/DNS/SetResponseType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lorg/xbill/DNS/SetResponseType;->DNAME:Lorg/xbill/DNS/SetResponseType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/xbill/DNS/SetResponseType;->SUCCESSFUL:Lorg/xbill/DNS/SetResponseType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 11
    new-instance v0, Lorg/xbill/DNS/SetResponseType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v2, v3}, Lorg/xbill/DNS/SetResponseType;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lorg/xbill/DNS/SetResponseType;->UNKNOWN:Lorg/xbill/DNS/SetResponseType;

    .line 17
    new-instance v0, Lorg/xbill/DNS/SetResponseType;

    const-string v1, "NXDOMAIN"

    invoke-direct {v0, v1, v3, v2, v3}, Lorg/xbill/DNS/SetResponseType;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lorg/xbill/DNS/SetResponseType;->NXDOMAIN:Lorg/xbill/DNS/SetResponseType;

    .line 23
    new-instance v0, Lorg/xbill/DNS/SetResponseType;

    const-string v1, "NXRRSET"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v2, v3}, Lorg/xbill/DNS/SetResponseType;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lorg/xbill/DNS/SetResponseType;->NXRRSET:Lorg/xbill/DNS/SetResponseType;

    .line 26
    new-instance v0, Lorg/xbill/DNS/SetResponseType;

    const-string v1, "DELEGATION"

    const/4 v4, 0x3

    invoke-direct {v0, v1, v4, v3, v2}, Lorg/xbill/DNS/SetResponseType;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lorg/xbill/DNS/SetResponseType;->DELEGATION:Lorg/xbill/DNS/SetResponseType;

    .line 33
    new-instance v0, Lorg/xbill/DNS/SetResponseType;

    const-string v1, "CNAME"

    const/4 v4, 0x4

    invoke-direct {v0, v1, v4, v3, v2}, Lorg/xbill/DNS/SetResponseType;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lorg/xbill/DNS/SetResponseType;->CNAME:Lorg/xbill/DNS/SetResponseType;

    .line 40
    new-instance v0, Lorg/xbill/DNS/SetResponseType;

    const-string v1, "DNAME"

    const/4 v4, 0x5

    invoke-direct {v0, v1, v4, v3, v2}, Lorg/xbill/DNS/SetResponseType;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lorg/xbill/DNS/SetResponseType;->DNAME:Lorg/xbill/DNS/SetResponseType;

    .line 46
    new-instance v0, Lorg/xbill/DNS/SetResponseType;

    const-string v1, "SUCCESSFUL"

    const/4 v3, 0x6

    invoke-direct {v0, v1, v3, v2, v2}, Lorg/xbill/DNS/SetResponseType;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lorg/xbill/DNS/SetResponseType;->SUCCESSFUL:Lorg/xbill/DNS/SetResponseType;

    .line 7
    invoke-static {}, Lorg/xbill/DNS/SetResponseType;->$values()[Lorg/xbill/DNS/SetResponseType;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/SetResponseType;->$VALUES:[Lorg/xbill/DNS/SetResponseType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x10,
            0x10
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lorg/xbill/DNS/SetResponseType;->printRecords:Z

    iput-boolean p4, p0, Lorg/xbill/DNS/SetResponseType;->isSealed:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/xbill/DNS/SetResponseType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lorg/xbill/DNS/SetResponseType;

    .line 7
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/xbill/DNS/SetResponseType;

    return-object p0
.end method

.method public static values()[Lorg/xbill/DNS/SetResponseType;
    .locals 1

    sget-object v0, Lorg/xbill/DNS/SetResponseType;->$VALUES:[Lorg/xbill/DNS/SetResponseType;

    .line 7
    invoke-virtual {v0}, [Lorg/xbill/DNS/SetResponseType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/xbill/DNS/SetResponseType;

    return-object v0
.end method


# virtual methods
.method public isPrintRecords()Z
    .locals 1

    iget-boolean v0, p0, Lorg/xbill/DNS/SetResponseType;->printRecords:Z

    return v0
.end method

.method public isSealed()Z
    .locals 1

    iget-boolean v0, p0, Lorg/xbill/DNS/SetResponseType;->isSealed:Z

    return v0
.end method
