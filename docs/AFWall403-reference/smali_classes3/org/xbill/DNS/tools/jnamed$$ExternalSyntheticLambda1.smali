.class public final synthetic Lorg/xbill/DNS/tools/jnamed$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/xbill/DNS/tools/jnamed;

.field public final synthetic f$1:Ljava/net/InetAddress;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lorg/xbill/DNS/tools/jnamed;Ljava/net/InetAddress;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/xbill/DNS/tools/jnamed$$ExternalSyntheticLambda1;->f$0:Lorg/xbill/DNS/tools/jnamed;

    iput-object p2, p0, Lorg/xbill/DNS/tools/jnamed$$ExternalSyntheticLambda1;->f$1:Ljava/net/InetAddress;

    iput p3, p0, Lorg/xbill/DNS/tools/jnamed$$ExternalSyntheticLambda1;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/xbill/DNS/tools/jnamed$$ExternalSyntheticLambda1;->f$0:Lorg/xbill/DNS/tools/jnamed;

    iget-object v1, p0, Lorg/xbill/DNS/tools/jnamed$$ExternalSyntheticLambda1;->f$1:Ljava/net/InetAddress;

    iget v2, p0, Lorg/xbill/DNS/tools/jnamed$$ExternalSyntheticLambda1;->f$2:I

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/tools/jnamed;->lambda$addTCP$1$org-xbill-DNS-tools-jnamed(Ljava/net/InetAddress;I)V

    return-void
.end method
