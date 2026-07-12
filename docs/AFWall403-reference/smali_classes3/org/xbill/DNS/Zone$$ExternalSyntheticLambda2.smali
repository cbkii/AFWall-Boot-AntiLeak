.class public final synthetic Lorg/xbill/DNS/Zone$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/xbill/DNS/Zone;

.field public final synthetic f$1:Lorg/xbill/DNS/Name;

.field public final synthetic f$2:I

.field public final synthetic f$3:Lorg/xbill/DNS/Record;

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lorg/xbill/DNS/Zone;Lorg/xbill/DNS/Name;ILorg/xbill/DNS/Record;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/xbill/DNS/Zone$$ExternalSyntheticLambda2;->f$0:Lorg/xbill/DNS/Zone;

    iput-object p2, p0, Lorg/xbill/DNS/Zone$$ExternalSyntheticLambda2;->f$1:Lorg/xbill/DNS/Name;

    iput p3, p0, Lorg/xbill/DNS/Zone$$ExternalSyntheticLambda2;->f$2:I

    iput-object p4, p0, Lorg/xbill/DNS/Zone$$ExternalSyntheticLambda2;->f$3:Lorg/xbill/DNS/Record;

    iput p5, p0, Lorg/xbill/DNS/Zone$$ExternalSyntheticLambda2;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lorg/xbill/DNS/Zone$$ExternalSyntheticLambda2;->f$0:Lorg/xbill/DNS/Zone;

    iget-object v1, p0, Lorg/xbill/DNS/Zone$$ExternalSyntheticLambda2;->f$1:Lorg/xbill/DNS/Name;

    iget v2, p0, Lorg/xbill/DNS/Zone$$ExternalSyntheticLambda2;->f$2:I

    iget-object v3, p0, Lorg/xbill/DNS/Zone$$ExternalSyntheticLambda2;->f$3:Lorg/xbill/DNS/Record;

    iget v4, p0, Lorg/xbill/DNS/Zone$$ExternalSyntheticLambda2;->f$4:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/xbill/DNS/Zone;->lambda$addRecord$1$org-xbill-DNS-Zone(Lorg/xbill/DNS/Name;ILorg/xbill/DNS/Record;I)V

    return-void
.end method
