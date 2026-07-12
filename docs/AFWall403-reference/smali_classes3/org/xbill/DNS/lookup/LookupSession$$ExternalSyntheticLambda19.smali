.class public final synthetic Lorg/xbill/DNS/lookup/LookupSession$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:Lorg/xbill/DNS/lookup/LookupSession;

.field public final synthetic f$1:Ljava/util/Iterator;

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lorg/xbill/DNS/lookup/LookupSession;Ljava/util/Iterator;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/xbill/DNS/lookup/LookupSession$$ExternalSyntheticLambda19;->f$0:Lorg/xbill/DNS/lookup/LookupSession;

    iput-object p2, p0, Lorg/xbill/DNS/lookup/LookupSession$$ExternalSyntheticLambda19;->f$1:Ljava/util/Iterator;

    iput p3, p0, Lorg/xbill/DNS/lookup/LookupSession$$ExternalSyntheticLambda19;->f$2:I

    iput p4, p0, Lorg/xbill/DNS/lookup/LookupSession$$ExternalSyntheticLambda19;->f$3:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lorg/xbill/DNS/lookup/LookupSession$$ExternalSyntheticLambda19;->f$0:Lorg/xbill/DNS/lookup/LookupSession;

    iget-object v1, p0, Lorg/xbill/DNS/lookup/LookupSession$$ExternalSyntheticLambda19;->f$1:Ljava/util/Iterator;

    iget v2, p0, Lorg/xbill/DNS/lookup/LookupSession$$ExternalSyntheticLambda19;->f$2:I

    iget v3, p0, Lorg/xbill/DNS/lookup/LookupSession$$ExternalSyntheticLambda19;->f$3:I

    move-object v4, p1

    check-cast v4, Lorg/xbill/DNS/lookup/LookupResult;

    move-object v5, p2

    check-cast v5, Ljava/lang/Throwable;

    invoke-virtual/range {v0 .. v5}, Lorg/xbill/DNS/lookup/LookupSession;->lambda$lookupUntilSuccess$3$org-xbill-DNS-lookup-LookupSession(Ljava/util/Iterator;IILorg/xbill/DNS/lookup/LookupResult;Ljava/lang/Throwable;)Ljava/util/concurrent/CompletionStage;

    move-result-object p1

    return-object p1
.end method
