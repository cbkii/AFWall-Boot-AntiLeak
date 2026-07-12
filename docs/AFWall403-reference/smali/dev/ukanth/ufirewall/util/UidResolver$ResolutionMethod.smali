.class final enum Ldev/ukanth/ufirewall/util/UidResolver$ResolutionMethod;
.super Ljava/lang/Enum;
.source "UidResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/ukanth/ufirewall/util/UidResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ResolutionMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ldev/ukanth/ufirewall/util/UidResolver$ResolutionMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ldev/ukanth/ufirewall/util/UidResolver$ResolutionMethod;

.field public static final enum PACKAGES_LIST:Ldev/ukanth/ufirewall/util/UidResolver$ResolutionMethod;

.field public static final enum PACKAGE_MANAGER:Ldev/ukanth/ufirewall/util/UidResolver$ResolutionMethod;

.field public static final enum PROC_FS:Ldev/ukanth/ufirewall/util/UidResolver$ResolutionMethod;

.field public static final enum SYSTEM_DB:Ldev/ukanth/ufirewall/util/UidResolver$ResolutionMethod;

.field public static final enum UNKNOWN:Ldev/ukanth/ufirewall/util/UidResolver$ResolutionMethod;


# direct methods
.method private static synthetic $values()[Ldev/ukanth/ufirewall/util/UidResolver$ResolutionMethod;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ldev/ukanth/ufirewall/util/UidResolver$ResolutionMethod;

    const/4 v1, 0x0

    sget-object v2, Ldev/ukanth/ufirewall/util/UidResolver$ResolutionMethod;->SYSTEM_DB:Ldev/ukanth/ufirewall/util/UidResolver$ResolutionMethod;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ldev/ukanth/ufirewall/util/UidResolver$ResolutionMethod;->PACKAGE_MANAGER:Ldev/ukanth/ufirewall/util/UidResolver$ResolutionMethod;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Ldev/ukanth/ufirewall/util/UidResolver$ResolutionMethod;->PROC_FS:Ldev/ukanth/ufirewall/util/UidResolver$ResolutionMethod;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Ldev/ukanth/ufirewall/util/UidResolver$ResolutionMethod;->PACKAGES_LIST:Ldev/ukanth/ufirewall/util/UidResolver$ResolutionMethod;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Ldev/ukanth/ufirewall/util/UidResolver$ResolutionMethod;->UNKNOWN:Ldev/ukanth/ufirewall/util/UidResolver$ResolutionMethod;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 119
    new-instance v0, Ldev/ukanth/ufirewall/util/UidResolver$ResolutionMethod;

    const-string v1, "SYSTEM_DB"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ldev/ukanth/ufirewall/util/UidResolver$ResolutionMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldev/ukanth/ufirewall/util/UidResolver$ResolutionMethod;->SYSTEM_DB:Ldev/ukanth/ufirewall/util/UidResolver$ResolutionMethod;

    new-instance v0, Ldev/ukanth/ufirewall/util/UidResolver$ResolutionMethod;

    const-string v1, "PACKAGE_MANAGER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ldev/ukanth/ufirewall/util/UidResolver$ResolutionMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldev/ukanth/ufirewall/util/UidResolver$ResolutionMethod;->PACKAGE_MANAGER:Ldev/ukanth/ufirewall/util/UidResolver$ResolutionMethod;

    new-instance v0, Ldev/ukanth/ufirewall/util/UidResolver$ResolutionMethod;

    const-string v1, "PROC_FS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ldev/ukanth/ufirewall/util/UidResolver$ResolutionMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldev/ukanth/ufirewall/util/UidResolver$ResolutionMethod;->PROC_FS:Ldev/ukanth/ufirewall/util/UidResolver$ResolutionMethod;

    new-instance v0, Ldev/ukanth/ufirewall/util/UidResolver$ResolutionMethod;

    const-string v1, "PACKAGES_LIST"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Ldev/ukanth/ufirewall/util/UidResolver$ResolutionMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldev/ukanth/ufirewall/util/UidResolver$ResolutionMethod;->PACKAGES_LIST:Ldev/ukanth/ufirewall/util/UidResolver$ResolutionMethod;

    new-instance v0, Ldev/ukanth/ufirewall/util/UidResolver$ResolutionMethod;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Ldev/ukanth/ufirewall/util/UidResolver$ResolutionMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldev/ukanth/ufirewall/util/UidResolver$ResolutionMethod;->UNKNOWN:Ldev/ukanth/ufirewall/util/UidResolver$ResolutionMethod;

    .line 118
    invoke-static {}, Ldev/ukanth/ufirewall/util/UidResolver$ResolutionMethod;->$values()[Ldev/ukanth/ufirewall/util/UidResolver$ResolutionMethod;

    move-result-object v0

    sput-object v0, Ldev/ukanth/ufirewall/util/UidResolver$ResolutionMethod;->$VALUES:[Ldev/ukanth/ufirewall/util/UidResolver$ResolutionMethod;

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

    .line 118
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ldev/ukanth/ufirewall/util/UidResolver$ResolutionMethod;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Ldev/ukanth/ufirewall/util/UidResolver$ResolutionMethod;

    .line 118
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ldev/ukanth/ufirewall/util/UidResolver$ResolutionMethod;

    return-object p0
.end method

.method public static values()[Ldev/ukanth/ufirewall/util/UidResolver$ResolutionMethod;
    .locals 1

    sget-object v0, Ldev/ukanth/ufirewall/util/UidResolver$ResolutionMethod;->$VALUES:[Ldev/ukanth/ufirewall/util/UidResolver$ResolutionMethod;

    .line 118
    invoke-virtual {v0}, [Ldev/ukanth/ufirewall/util/UidResolver$ResolutionMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldev/ukanth/ufirewall/util/UidResolver$ResolutionMethod;

    return-object v0
.end method
