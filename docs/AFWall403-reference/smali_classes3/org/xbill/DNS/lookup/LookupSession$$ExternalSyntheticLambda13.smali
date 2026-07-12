.class public final synthetic Lorg/xbill/DNS/lookup/LookupSession$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lorg/xbill/DNS/lookup/LookupSession;

.field public final synthetic f$1:Lorg/xbill/DNS/Record;

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lorg/xbill/DNS/lookup/LookupSession;Lorg/xbill/DNS/Record;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/xbill/DNS/lookup/LookupSession$$ExternalSyntheticLambda13;->f$0:Lorg/xbill/DNS/lookup/LookupSession;

    iput-object p2, p0, Lorg/xbill/DNS/lookup/LookupSession$$ExternalSyntheticLambda13;->f$1:Lorg/xbill/DNS/Record;

    iput-object p3, p0, Lorg/xbill/DNS/lookup/LookupSession$$ExternalSyntheticLambda13;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lorg/xbill/DNS/lookup/LookupSession$$ExternalSyntheticLambda13;->f$0:Lorg/xbill/DNS/lookup/LookupSession;

    iget-object v1, p0, Lorg/xbill/DNS/lookup/LookupSession$$ExternalSyntheticLambda13;->f$1:Lorg/xbill/DNS/Record;

    iget-object v2, p0, Lorg/xbill/DNS/lookup/LookupSession$$ExternalSyntheticLambda13;->f$2:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/lookup/LookupSession;->lambda$lookupWithCache$6$org-xbill-DNS-lookup-LookupSession(Lorg/xbill/DNS/Record;Ljava/util/List;)Ljava/util/concurrent/CompletionStage;

    move-result-object v0

    return-object v0
.end method
