.class public final enum Ldev/ukanth/ufirewall/util/LogNetUtil$JobType;
.super Ljava/lang/Enum;
.source "LogNetUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/ukanth/ufirewall/util/LogNetUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "JobType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ldev/ukanth/ufirewall/util/LogNetUtil$JobType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ldev/ukanth/ufirewall/util/LogNetUtil$JobType;

.field public static final enum PING:Ldev/ukanth/ufirewall/util/LogNetUtil$JobType;

.field public static final enum RESOLVE:Ldev/ukanth/ufirewall/util/LogNetUtil$JobType;


# direct methods
.method private static synthetic $values()[Ldev/ukanth/ufirewall/util/LogNetUtil$JobType;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ldev/ukanth/ufirewall/util/LogNetUtil$JobType;

    const/4 v1, 0x0

    sget-object v2, Ldev/ukanth/ufirewall/util/LogNetUtil$JobType;->PING:Ldev/ukanth/ufirewall/util/LogNetUtil$JobType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ldev/ukanth/ufirewall/util/LogNetUtil$JobType;->RESOLVE:Ldev/ukanth/ufirewall/util/LogNetUtil$JobType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 219
    new-instance v0, Ldev/ukanth/ufirewall/util/LogNetUtil$JobType;

    const-string v1, "PING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ldev/ukanth/ufirewall/util/LogNetUtil$JobType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldev/ukanth/ufirewall/util/LogNetUtil$JobType;->PING:Ldev/ukanth/ufirewall/util/LogNetUtil$JobType;

    .line 220
    new-instance v0, Ldev/ukanth/ufirewall/util/LogNetUtil$JobType;

    const-string v1, "RESOLVE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ldev/ukanth/ufirewall/util/LogNetUtil$JobType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldev/ukanth/ufirewall/util/LogNetUtil$JobType;->RESOLVE:Ldev/ukanth/ufirewall/util/LogNetUtil$JobType;

    .line 218
    invoke-static {}, Ldev/ukanth/ufirewall/util/LogNetUtil$JobType;->$values()[Ldev/ukanth/ufirewall/util/LogNetUtil$JobType;

    move-result-object v0

    sput-object v0, Ldev/ukanth/ufirewall/util/LogNetUtil$JobType;->$VALUES:[Ldev/ukanth/ufirewall/util/LogNetUtil$JobType;

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

    .line 218
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ldev/ukanth/ufirewall/util/LogNetUtil$JobType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Ldev/ukanth/ufirewall/util/LogNetUtil$JobType;

    .line 218
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ldev/ukanth/ufirewall/util/LogNetUtil$JobType;

    return-object p0
.end method

.method public static values()[Ldev/ukanth/ufirewall/util/LogNetUtil$JobType;
    .locals 1

    sget-object v0, Ldev/ukanth/ufirewall/util/LogNetUtil$JobType;->$VALUES:[Ldev/ukanth/ufirewall/util/LogNetUtil$JobType;

    .line 218
    invoke-virtual {v0}, [Ldev/ukanth/ufirewall/util/LogNetUtil$JobType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldev/ukanth/ufirewall/util/LogNetUtil$JobType;

    return-object v0
.end method
