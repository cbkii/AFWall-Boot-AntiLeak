.class Ldev/ukanth/ufirewall/preferences/SharePreferenceProvider$PrefNameKeyPair;
.super Ljava/lang/Object;
.source "SharePreferenceProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/ukanth/ufirewall/preferences/SharePreferenceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PrefNameKeyPair"
.end annotation


# instance fields
.field private final key:Ljava/lang/String;

.field private final name:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetkey(Ldev/ukanth/ufirewall/preferences/SharePreferenceProvider$PrefNameKeyPair;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ldev/ukanth/ufirewall/preferences/SharePreferenceProvider$PrefNameKeyPair;->key:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetname(Ldev/ukanth/ufirewall/preferences/SharePreferenceProvider$PrefNameKeyPair;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ldev/ukanth/ufirewall/preferences/SharePreferenceProvider$PrefNameKeyPair;->name:Ljava/lang/String;

    return-object p0
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/ukanth/ufirewall/preferences/SharePreferenceProvider$PrefNameKeyPair;->name:Ljava/lang/String;

    iput-object p2, p0, Ldev/ukanth/ufirewall/preferences/SharePreferenceProvider$PrefNameKeyPair;->key:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ldev/ukanth/ufirewall/preferences/SharePreferenceProvider$PrefNameKeyPair-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ldev/ukanth/ufirewall/preferences/SharePreferenceProvider$PrefNameKeyPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
