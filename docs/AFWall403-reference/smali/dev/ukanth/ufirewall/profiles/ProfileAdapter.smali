.class public Ldev/ukanth/ufirewall/profiles/ProfileAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ProfileAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/ukanth/ufirewall/profiles/ProfileAdapter$ProfileHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ldev/ukanth/ufirewall/profiles/ProfileData;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final profileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ldev/ukanth/ufirewall/profiles/ProfileData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ldev/ukanth/ufirewall/profiles/ProfileData;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 24
    sget v0, Ldev/ukanth/ufirewall/R$layout;->profile_layout:I

    invoke-direct {p0, p2, v0, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p1, p0, Ldev/ukanth/ufirewall/profiles/ProfileAdapter;->profileList:Ljava/util/List;

    iput-object p2, p0, Ldev/ukanth/ufirewall/profiles/ProfileAdapter;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Ldev/ukanth/ufirewall/profiles/ProfileAdapter;->profileList:Ljava/util/List;

    .line 30
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ldev/ukanth/ufirewall/profiles/ProfileData;
    .locals 1

    iget-object v0, p0, Ldev/ukanth/ufirewall/profiles/ProfileAdapter;->profileList:Ljava/util/List;

    .line 34
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldev/ukanth/ufirewall/profiles/ProfileData;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 17
    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/profiles/ProfileAdapter;->getItem(I)Ldev/ukanth/ufirewall/profiles/ProfileData;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    iget-object v0, p0, Ldev/ukanth/ufirewall/profiles/ProfileAdapter;->profileList:Ljava/util/List;

    .line 38
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldev/ukanth/ufirewall/profiles/ProfileData;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 43
    new-instance p3, Ldev/ukanth/ufirewall/profiles/ProfileAdapter$ProfileHolder;

    const/4 v0, 0x0

    invoke-direct {p3, v0}, Ldev/ukanth/ufirewall/profiles/ProfileAdapter$ProfileHolder;-><init>(Ldev/ukanth/ufirewall/profiles/ProfileAdapter$ProfileHolder-IA;)V

    if-nez p2, :cond_0

    iget-object p2, p0, Ldev/ukanth/ufirewall/profiles/ProfileAdapter;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    .line 45
    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    .line 46
    sget v1, Ldev/ukanth/ufirewall/R$layout;->profile_layout:I

    invoke-virtual {p2, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 47
    sget v0, Ldev/ukanth/ufirewall/R$id;->pro_name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Ldev/ukanth/ufirewall/profiles/ProfileAdapter$ProfileHolder;->profileNameView:Landroid/widget/TextView;

    .line 48
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ldev/ukanth/ufirewall/profiles/ProfileAdapter$ProfileHolder;

    :goto_0
    iget-object v0, p0, Ldev/ukanth/ufirewall/profiles/ProfileAdapter;->profileList:Ljava/util/List;

    .line 52
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldev/ukanth/ufirewall/profiles/ProfileData;

    .line 53
    iput-object p1, p3, Ldev/ukanth/ufirewall/profiles/ProfileAdapter$ProfileHolder;->profile:Ldev/ukanth/ufirewall/profiles/ProfileData;

    .line 54
    iget-object p3, p3, Ldev/ukanth/ufirewall/profiles/ProfileAdapter$ProfileHolder;->profileNameView:Landroid/widget/TextView;

    invoke-virtual {p1}, Ldev/ukanth/ufirewall/profiles/ProfileData;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
