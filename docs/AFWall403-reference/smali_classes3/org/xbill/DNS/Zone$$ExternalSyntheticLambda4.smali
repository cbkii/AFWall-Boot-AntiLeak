.class public final synthetic Lorg/xbill/DNS/Zone$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/xbill/DNS/Zone;

.field public final synthetic f$1:Lorg/xbill/DNS/Name;

.field public final synthetic f$2:Lorg/xbill/DNS/RRset;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lorg/xbill/DNS/Zone;Lorg/xbill/DNS/Name;Lorg/xbill/DNS/RRset;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/xbill/DNS/Zone$$ExternalSyntheticLambda4;->f$0:Lorg/xbill/DNS/Zone;

    iput-object p2, p0, Lorg/xbill/DNS/Zone$$ExternalSyntheticLambda4;->f$1:Lorg/xbill/DNS/Name;

    iput-object p3, p0, Lorg/xbill/DNS/Zone$$ExternalSyntheticLambda4;->f$2:Lorg/xbill/DNS/RRset;

    iput p4, p0, Lorg/xbill/DNS/Zone$$ExternalSyntheticLambda4;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lorg/xbill/DNS/Zone$$ExternalSyntheticLambda4;->f$0:Lorg/xbill/DNS/Zone;

    iget-object v1, p0, Lorg/xbill/DNS/Zone$$ExternalSyntheticLambda4;->f$1:Lorg/xbill/DNS/Name;

    iget-object v2, p0, Lorg/xbill/DNS/Zone$$ExternalSyntheticLambda4;->f$2:Lorg/xbill/DNS/RRset;

    iget v3, p0, Lorg/xbill/DNS/Zone$$ExternalSyntheticLambda4;->f$3:I

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Zone;->lambda$addRRset$3$org-xbill-DNS-Zone(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/RRset;I)V

    return-void
.end method
