.class public final enum Ldev/ukanth/ufirewall/service/RootShellService2$ShellState2;
.super Ljava/lang/Enum;
.source "RootShellService2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/ukanth/ufirewall/service/RootShellService2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ShellState2"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ldev/ukanth/ufirewall/service/RootShellService2$ShellState2;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ldev/ukanth/ufirewall/service/RootShellService2$ShellState2;

.field public static final enum BUSY:Ldev/ukanth/ufirewall/service/RootShellService2$ShellState2;

.field public static final enum FAIL:Ldev/ukanth/ufirewall/service/RootShellService2$ShellState2;

.field public static final enum INIT:Ldev/ukanth/ufirewall/service/RootShellService2$ShellState2;

.field public static final enum READY:Ldev/ukanth/ufirewall/service/RootShellService2$ShellState2;


# direct methods
.method private static synthetic $values()[Ldev/ukanth/ufirewall/service/RootShellService2$ShellState2;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ldev/ukanth/ufirewall/service/RootShellService2$ShellState2;

    const/4 v1, 0x0

    sget-object v2, Ldev/ukanth/ufirewall/service/RootShellService2$ShellState2;->INIT:Ldev/ukanth/ufirewall/service/RootShellService2$ShellState2;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ldev/ukanth/ufirewall/service/RootShellService2$ShellState2;->READY:Ldev/ukanth/ufirewall/service/RootShellService2$ShellState2;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Ldev/ukanth/ufirewall/service/RootShellService2$ShellState2;->BUSY:Ldev/ukanth/ufirewall/service/RootShellService2$ShellState2;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Ldev/ukanth/ufirewall/service/RootShellService2$ShellState2;->FAIL:Ldev/ukanth/ufirewall/service/RootShellService2$ShellState2;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 418
    new-instance v0, Ldev/ukanth/ufirewall/service/RootShellService2$ShellState2;

    const-string v1, "INIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ldev/ukanth/ufirewall/service/RootShellService2$ShellState2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldev/ukanth/ufirewall/service/RootShellService2$ShellState2;->INIT:Ldev/ukanth/ufirewall/service/RootShellService2$ShellState2;

    .line 419
    new-instance v0, Ldev/ukanth/ufirewall/service/RootShellService2$ShellState2;

    const-string v1, "READY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ldev/ukanth/ufirewall/service/RootShellService2$ShellState2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldev/ukanth/ufirewall/service/RootShellService2$ShellState2;->READY:Ldev/ukanth/ufirewall/service/RootShellService2$ShellState2;

    .line 420
    new-instance v0, Ldev/ukanth/ufirewall/service/RootShellService2$ShellState2;

    const-string v1, "BUSY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ldev/ukanth/ufirewall/service/RootShellService2$ShellState2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldev/ukanth/ufirewall/service/RootShellService2$ShellState2;->BUSY:Ldev/ukanth/ufirewall/service/RootShellService2$ShellState2;

    .line 421
    new-instance v0, Ldev/ukanth/ufirewall/service/RootShellService2$ShellState2;

    const-string v1, "FAIL"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Ldev/ukanth/ufirewall/service/RootShellService2$ShellState2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldev/ukanth/ufirewall/service/RootShellService2$ShellState2;->FAIL:Ldev/ukanth/ufirewall/service/RootShellService2$ShellState2;

    .line 417
    invoke-static {}, Ldev/ukanth/ufirewall/service/RootShellService2$ShellState2;->$values()[Ldev/ukanth/ufirewall/service/RootShellService2$ShellState2;

    move-result-object v0

    sput-object v0, Ldev/ukanth/ufirewall/service/RootShellService2$ShellState2;->$VALUES:[Ldev/ukanth/ufirewall/service/RootShellService2$ShellState2;

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

    .line 417
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ldev/ukanth/ufirewall/service/RootShellService2$ShellState2;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Ldev/ukanth/ufirewall/service/RootShellService2$ShellState2;

    .line 417
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ldev/ukanth/ufirewall/service/RootShellService2$ShellState2;

    return-object p0
.end method

.method public static values()[Ldev/ukanth/ufirewall/service/RootShellService2$ShellState2;
    .locals 1

    sget-object v0, Ldev/ukanth/ufirewall/service/RootShellService2$ShellState2;->$VALUES:[Ldev/ukanth/ufirewall/service/RootShellService2$ShellState2;

    .line 417
    invoke-virtual {v0}, [Ldev/ukanth/ufirewall/service/RootShellService2$ShellState2;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldev/ukanth/ufirewall/service/RootShellService2$ShellState2;

    return-object v0
.end method
