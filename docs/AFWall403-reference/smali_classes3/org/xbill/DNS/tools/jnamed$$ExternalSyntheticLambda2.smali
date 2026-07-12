.class public final synthetic Lorg/xbill/DNS/tools/jnamed$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/xbill/DNS/tools/jnamed;

.field public final synthetic f$1:Ljava/net/Socket;


# direct methods
.method public synthetic constructor <init>(Lorg/xbill/DNS/tools/jnamed;Ljava/net/Socket;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/xbill/DNS/tools/jnamed$$ExternalSyntheticLambda2;->f$0:Lorg/xbill/DNS/tools/jnamed;

    iput-object p2, p0, Lorg/xbill/DNS/tools/jnamed$$ExternalSyntheticLambda2;->f$1:Ljava/net/Socket;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/xbill/DNS/tools/jnamed$$ExternalSyntheticLambda2;->f$0:Lorg/xbill/DNS/tools/jnamed;

    iget-object v1, p0, Lorg/xbill/DNS/tools/jnamed$$ExternalSyntheticLambda2;->f$1:Ljava/net/Socket;

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/tools/jnamed;->lambda$serveTCP$0$org-xbill-DNS-tools-jnamed(Ljava/net/Socket;)V

    return-void
.end method
