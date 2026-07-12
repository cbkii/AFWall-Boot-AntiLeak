.class public Ldev/ukanth/ufirewall/preferences/SeekBarPreference;
.super Landroid/preference/Preference;
.source "SeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field private static final DEFAULT_MAX:I = 0x64

.field private static final DEFAULT_MIN:I

.field private static final DEFAULT_VALUE:I


# instance fields
.field private mMax:I

.field private mMin:I

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSuffix:Ljava/lang/String;

.field private mValue:I

.field private mValueText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 41
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, v0}, Ldev/ukanth/ufirewall/preferences/SeekBarPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-direct {p0, p1, p2}, Ldev/ukanth/ufirewall/preferences/SeekBarPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    invoke-direct {p0, p1, p2}, Ldev/ukanth/ufirewall/preferences/SeekBarPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 46
    sget v0, Ldev/ukanth/ufirewall/R$layout;->preference_seekbar:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/preferences/SeekBarPreference;->setLayoutResource(I)V

    const/4 v0, 0x0

    const/16 v1, 0x64

    if-eqz p2, :cond_0

    .line 49
    sget-object v2, Ldev/ukanth/ufirewall/R$styleable;->SeekBarPreference:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 50
    sget p2, Ldev/ukanth/ufirewall/R$styleable;->SeekBarPreference_android_max:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Ldev/ukanth/ufirewall/preferences/SeekBarPreference;->mMax:I

    .line 51
    sget p2, Ldev/ukanth/ufirewall/R$styleable;->SeekBarPreference_min:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Ldev/ukanth/ufirewall/preferences/SeekBarPreference;->mMin:I

    .line 52
    sget p2, Ldev/ukanth/ufirewall/R$styleable;->SeekBarPreference_suffix:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Ldev/ukanth/ufirewall/preferences/SeekBarPreference;->mSuffix:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :cond_0
    iput v1, p0, Ldev/ukanth/ufirewall/preferences/SeekBarPreference;->mMax:I

    iput v0, p0, Ldev/ukanth/ufirewall/preferences/SeekBarPreference;->mMin:I

    const-string p1, ""

    iput-object p1, p0, Ldev/ukanth/ufirewall/preferences/SeekBarPreference;->mSuffix:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method private updateValueText()V
    .locals 4

    iget-object v0, p0, Ldev/ukanth/ufirewall/preferences/SeekBarPreference;->mValueText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldev/ukanth/ufirewall/preferences/SeekBarPreference;->mSuffix:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ldev/ukanth/ufirewall/preferences/SeekBarPreference;->mSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iget-object v1, p0, Ldev/ukanth/ufirewall/preferences/SeekBarPreference;->mValueText:Landroid/widget/TextView;

    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Ldev/ukanth/ufirewall/preferences/SeekBarPreference;->mValue:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Ldev/ukanth/ufirewall/preferences/SeekBarPreference;->mValue:I

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2

    .line 69
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 71
    sget v0, Ldev/ukanth/ufirewall/R$id;->seekbar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Ldev/ukanth/ufirewall/preferences/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 72
    sget v0, Ldev/ukanth/ufirewall/R$id;->seekbar_value:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ldev/ukanth/ufirewall/preferences/SeekBarPreference;->mValueText:Landroid/widget/TextView;

    iget-object p1, p0, Ldev/ukanth/ufirewall/preferences/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz p1, :cond_0

    iget v0, p0, Ldev/ukanth/ufirewall/preferences/SeekBarPreference;->mMax:I

    iget v1, p0, Ldev/ukanth/ufirewall/preferences/SeekBarPreference;->mMin:I

    sub-int/2addr v0, v1

    .line 75
    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object p1, p0, Ldev/ukanth/ufirewall/preferences/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v0, p0, Ldev/ukanth/ufirewall/preferences/SeekBarPreference;->mValue:I

    iget v1, p0, Ldev/ukanth/ufirewall/preferences/SeekBarPreference;->mMin:I

    sub-int/2addr v0, v1

    .line 76
    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object p1, p0, Ldev/ukanth/ufirewall/preferences/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 77
    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 80
    :cond_0
    invoke-direct {p0}, Ldev/ukanth/ufirewall/preferences/SeekBarPreference;->updateValueText()V

    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 63
    invoke-super {p0, p1}, Landroid/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 85
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    if-eqz p3, :cond_0

    iget p1, p0, Ldev/ukanth/ufirewall/preferences/SeekBarPreference;->mMin:I

    add-int/2addr p2, p1

    .line 117
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/preferences/SeekBarPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 118
    invoke-virtual {p0, p2}, Ldev/ukanth/ufirewall/preferences/SeekBarPreference;->setValue(I)V

    :cond_0
    return-void
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 92
    :try_start_0
    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/preferences/SeekBarPreference;->getPersistedInt(I)I

    move-result p2

    iput p2, p0, Ldev/ukanth/ufirewall/preferences/SeekBarPreference;->mValue:I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 95
    :catch_0
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/preferences/SeekBarPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-virtual {p0}, Ldev/ukanth/ufirewall/preferences/SeekBarPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 97
    :try_start_1
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Ldev/ukanth/ufirewall/preferences/SeekBarPreference;->mValue:I

    .line 99
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/preferences/SeekBarPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-virtual {p0}, Ldev/ukanth/ufirewall/preferences/SeekBarPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 100
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/preferences/SeekBarPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-virtual {p0}, Ldev/ukanth/ufirewall/preferences/SeekBarPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Ldev/ukanth/ufirewall/preferences/SeekBarPreference;->mValue:I

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    iput p1, p0, Ldev/ukanth/ufirewall/preferences/SeekBarPreference;->mValue:I

    .line 103
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/preferences/SeekBarPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-virtual {p0}, Ldev/ukanth/ufirewall/preferences/SeekBarPreference;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 104
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/preferences/SeekBarPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-virtual {p0}, Ldev/ukanth/ufirewall/preferences/SeekBarPreference;->getKey()Ljava/lang/String;

    move-result-object p2

    iget v0, p0, Ldev/ukanth/ufirewall/preferences/SeekBarPreference;->mValue:I

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 108
    :cond_0
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Ldev/ukanth/ufirewall/preferences/SeekBarPreference;->mValue:I

    .line 109
    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/preferences/SeekBarPreference;->persistInt(I)Z

    :goto_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    iget p1, p0, Ldev/ukanth/ufirewall/preferences/SeekBarPreference;->mValue:I

    .line 130
    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/preferences/SeekBarPreference;->persistInt(I)Z

    return-void
.end method

.method public setMax(I)V
    .locals 2

    iput p1, p0, Ldev/ukanth/ufirewall/preferences/SeekBarPreference;->mMax:I

    iget-object v0, p0, Ldev/ukanth/ufirewall/preferences/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    iget v1, p0, Ldev/ukanth/ufirewall/preferences/SeekBarPreference;->mMin:I

    sub-int/2addr p1, v1

    .line 165
    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setMax(I)V

    :cond_0
    return-void
.end method

.method public setMin(I)V
    .locals 2

    iput p1, p0, Ldev/ukanth/ufirewall/preferences/SeekBarPreference;->mMin:I

    iget-object v0, p0, Ldev/ukanth/ufirewall/preferences/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    iget v1, p0, Ldev/ukanth/ufirewall/preferences/SeekBarPreference;->mMax:I

    sub-int/2addr v1, p1

    .line 172
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    :cond_0
    return-void
.end method

.method public setSuffix(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ldev/ukanth/ufirewall/preferences/SeekBarPreference;->mSuffix:Ljava/lang/String;

    .line 178
    invoke-direct {p0}, Ldev/ukanth/ufirewall/preferences/SeekBarPreference;->updateValueText()V

    return-void
.end method

.method public setValue(I)V
    .locals 2

    iget v0, p0, Ldev/ukanth/ufirewall/preferences/SeekBarPreference;->mMin:I

    if-ge p1, v0, :cond_0

    move p1, v0

    :cond_0
    iget v0, p0, Ldev/ukanth/ufirewall/preferences/SeekBarPreference;->mMax:I

    if-le p1, v0, :cond_1

    move p1, v0

    :cond_1
    iget v0, p0, Ldev/ukanth/ufirewall/preferences/SeekBarPreference;->mValue:I

    if-eq p1, v0, :cond_2

    iput p1, p0, Ldev/ukanth/ufirewall/preferences/SeekBarPreference;->mValue:I

    .line 143
    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/preferences/SeekBarPreference;->persistInt(I)Z

    .line 144
    invoke-direct {p0}, Ldev/ukanth/ufirewall/preferences/SeekBarPreference;->updateValueText()V

    iget-object v0, p0, Ldev/ukanth/ufirewall/preferences/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_2

    iget v1, p0, Ldev/ukanth/ufirewall/preferences/SeekBarPreference;->mMin:I

    sub-int/2addr p1, v1

    .line 146
    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_2
    return-void
.end method
