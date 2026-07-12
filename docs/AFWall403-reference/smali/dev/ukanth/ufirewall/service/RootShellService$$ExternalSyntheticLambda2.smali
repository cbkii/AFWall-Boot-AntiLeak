.class public final synthetic Ldev/ukanth/ufirewall/service/RootShellService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Leu/chainfire/libsuperuser/Shell$OnCommandResultListener2;


# instance fields
.field public final synthetic f$0:Ldev/ukanth/ufirewall/service/RootShellService;

.field public final synthetic f$1:Ldev/ukanth/ufirewall/service/RootCommand;


# direct methods
.method public synthetic constructor <init>(Ldev/ukanth/ufirewall/service/RootShellService;Ldev/ukanth/ufirewall/service/RootCommand;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/ukanth/ufirewall/service/RootShellService$$ExternalSyntheticLambda2;->f$0:Ldev/ukanth/ufirewall/service/RootShellService;

    iput-object p2, p0, Ldev/ukanth/ufirewall/service/RootShellService$$ExternalSyntheticLambda2;->f$1:Ldev/ukanth/ufirewall/service/RootCommand;

    return-void
.end method


# virtual methods
.method public final onCommandResult(IILjava/util/List;Ljava/util/List;)V
    .locals 6

    iget-object v0, p0, Ldev/ukanth/ufirewall/service/RootShellService$$ExternalSyntheticLambda2;->f$0:Ldev/ukanth/ufirewall/service/RootShellService;

    iget-object v1, p0, Ldev/ukanth/ufirewall/service/RootShellService$$ExternalSyntheticLambda2;->f$1:Ldev/ukanth/ufirewall/service/RootCommand;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Ldev/ukanth/ufirewall/service/RootShellService;->$r8$lambda$zLw1By02FSIcHAOJNHPL9VpT1uk(Ldev/ukanth/ufirewall/service/RootShellService;Ldev/ukanth/ufirewall/service/RootCommand;IILjava/util/List;Ljava/util/List;)V

    return-void
.end method
