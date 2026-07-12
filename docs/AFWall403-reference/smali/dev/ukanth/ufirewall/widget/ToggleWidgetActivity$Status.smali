.class public Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$Status;
.super Ljava/lang/Object;
.source "ToggleWidgetActivity.java"

# interfaces
.implements Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Status"
.end annotation


# instance fields
.field final synthetic this$0:Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;


# direct methods
.method public constructor <init>(Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$Status;->this$0:Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIcon()I
    .locals 1

    iget-object v0, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$Status;->this$0:Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;

    .line 159
    invoke-virtual {v0}, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldev/ukanth/ufirewall/Api;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Ldev/ukanth/ufirewall/R$drawable;->widget_on:I

    goto :goto_0

    :cond_0
    sget v0, Ldev/ukanth/ufirewall/R$drawable;->widget_off:I

    :goto_0
    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 3

    .line 140
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableMultiProfile()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 141
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->storedProfile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "AFWallPrefs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_1
    const-string v1, "AFWallProfile3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_2
    const-string v1, "AFWallProfile2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_3
    const-string v1, "AFWallProfile1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 151
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->storedProfile()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 143
    :pswitch_0
    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$Status;->this$0:Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;

    invoke-virtual {v1}, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Ldev/ukanth/ufirewall/R$string;->defaultProfile:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "default"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 149
    :pswitch_1
    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$Status;->this$0:Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;

    invoke-virtual {v1}, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Ldev/ukanth/ufirewall/R$string;->profile3:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "profile3"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 147
    :pswitch_2
    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$Status;->this$0:Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;

    invoke-virtual {v1}, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Ldev/ukanth/ufirewall/R$string;->profile2:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "profile2"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 145
    :pswitch_3
    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$Status;->this$0:Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;

    invoke-virtual {v1}, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Ldev/ukanth/ufirewall/R$string;->profile1:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "profile1"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    const-string v0, ""

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x2dd7ba9 -> :sswitch_3
        -0x2dd7ba8 -> :sswitch_2
        -0x2dd7ba7 -> :sswitch_1
        0x67c32061 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .line 121
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableMultiProfile()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 122
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->storedProfile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "AFWallPrefs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_1
    const-string v1, "AFWallProfile3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_2
    const-string v1, "AFWallProfile2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_3
    const-string v1, "AFWallProfile1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 132
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->storedProfile()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 124
    :pswitch_0
    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$Status;->this$0:Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;

    invoke-virtual {v1}, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Ldev/ukanth/ufirewall/R$string;->defaultProfile:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "default"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 130
    :pswitch_1
    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$Status;->this$0:Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;

    invoke-virtual {v1}, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Ldev/ukanth/ufirewall/R$string;->profile3:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "profile3"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 128
    :pswitch_2
    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$Status;->this$0:Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;

    invoke-virtual {v1}, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Ldev/ukanth/ufirewall/R$string;->profile2:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "profile2"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 126
    :pswitch_3
    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$Status;->this$0:Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;

    invoke-virtual {v1}, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Ldev/ukanth/ufirewall/R$string;->profile1:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "profile1"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    const-string v0, ""

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x2dd7ba9 -> :sswitch_3
        -0x2dd7ba8 -> :sswitch_2
        -0x2dd7ba7 -> :sswitch_1
        0x67c32061 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public menuActiviated()V
    .locals 0

    return-void
.end method
