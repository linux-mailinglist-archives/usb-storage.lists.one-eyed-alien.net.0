Return-Path: <usb-storage+bncBCUMB4EN24LRBFF5SXVQKGQE5F6F5MI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wm1-x345.google.com (mail-wm1-x345.google.com [IPv6:2a00:1450:4864:20::345])
	by mail.lfdr.de (Postfix) with ESMTPS id BC2679F09F
	for <lists+usb-storage@lfdr.de>; Tue, 27 Aug 2019 18:47:16 +0200 (CEST)
Received: by mail-wm1-x345.google.com with SMTP id f10sf20472wmh.8
        for <lists+usb-storage@lfdr.de>; Tue, 27 Aug 2019 09:47:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566924436; cv=pass;
        d=google.com; s=arc-20160816;
        b=LXaNtI+Bd5Be414lkttWDIWtg4JWdr9Scij2KZIxieOD0kMLEJHzisdRkr/50pn8P4
         aZNfkCvyixpedidtml6behWzPd43TU90VXHWbDB9Bv5VeVrpJECv3KdRRcUAo+y/ZWrD
         8qviNNU1PePuA9sEmv3fH2oCV/2D2umX13NxZ5TCueknSeSRoKAb7dcYXnxXQuCfsq1j
         aEclOS+5ZoKSRAUeOnyDMpDafKVCip/07wWaFtp04SaxGbIYgQE8KkunwR1YSBxNvEor
         xSPoVAoGp/mbyv4GT7S2ICxF649O1QWc46heXs+DCAoao232DYl1kuw0Dvg0EhE4E5un
         CpXA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:references:message-id
         :content-transfer-encoding:cc:date:in-reply-to:from:subject
         :mime-version:sender:dkim-signature;
        bh=iIFwkah0suSXu4fKakjf30VCms+qjErD4UUb3uZU7Ss=;
        b=UvWq7PsWqsJ0aEN3u02QEy6UvKsZJRBpI+9ZnXy8KxXJX1ywxd9L2W7Q++jWgbIDtD
         aoDOy5UVcC/H9IvYounHpaxrRqpyW8SLAzs3Brtf0d0iD9jNsciXBk7AtoQChmbY1afK
         jeVyYvrTl5xoYGUNUbsWfzBgnKNnV82pq3qfEbImEt30Ip81NssrYGhmWdGeTVGWl6sn
         7oEC0Hv4qb7cmQ86q9xRwzjIV/Y0JvsksYqLkSiQGPLtAUB0EppBlcSWo9oLFQbJqyua
         yyrH4OE/ILVxV34jpGVXEDJvX58Ev+VBOA9xf/4eqHQNWM4z1HghTY3Ov0rKnBkk1C/A
         Rlvg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: best guess record for domain of kai.heng.feng@canonical.com designates 91.189.89.112 as permitted sender) smtp.mailfrom=kai.heng.feng@canonical.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=canonical.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iIFwkah0suSXu4fKakjf30VCms+qjErD4UUb3uZU7Ss=;
        b=dC/4cCWEkhzVapmQPYRU5jW2+qSqpSfeXL7g43JJJoYlc91Q1bC+1iqELoIaaFOxGZ
         IHMhsvHh8VPZnS3O+3/Gae8TAb8gBJ1Ledq2aObApTAEl0MytXGmZGZ9eTnn/yD19nsJ
         geSJDoL5F9aJcDfJ7i7Gt6rb6Q35rlph+TuDs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:subject:from:in-reply-to
         :date:cc:content-transfer-encoding:message-id:references:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=iIFwkah0suSXu4fKakjf30VCms+qjErD4UUb3uZU7Ss=;
        b=PitL5pfAdsYKPOQiAwBcq+l+CgNhG2HOGC+el/WS/5uWOCnENgn+zJ+U7dIb2X4YCv
         saBJsYz1tRCUskwPPkk5Z9IHagweezY9WOWFPFkG2Dvhj3YKb8RNKPzhGLCs4g1YoflN
         JeiWjmcdUtxGk9T2klgT7H7Qua0Fdlwgg3t5S9PR0H/MLSiYOv9N64DY4dIogYzrIqt9
         KDrWqPcJNsVfWxNxTpY8hZP8VtUtHAqff+k0umXrsiOArqmT6YDgarfUyzYGSSsCoHc/
         +1tmz3MvIf705NBHjtl+zmcIh0XoSYCfTh6VUnJuL2FJ75Ch38ougDJyzOp3S5ZxRnQv
         E/qQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAUss2pHi2KLr73yzHHuhY4VYoO8K4vuhXMAmDRD6Oijn5WSK6B8
	VxJ+I5f58exSqiXnuRtL5IJlNw==
X-Google-Smtp-Source: APXvYqxLuLqCvG/z+sW52uzdJCyME2rNyiefIC2SKo1cLbbcOKp3or7E3J0p62ZE8Rxqfh50V282eA==
X-Received: by 2002:adf:facc:: with SMTP id a12mr19513858wrs.205.1566924436380;
        Tue, 27 Aug 2019 09:47:16 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a5d:6191:: with SMTP id j17ls5578899wru.13.gmail; Tue, 27
 Aug 2019 09:47:15 -0700 (PDT)
X-Received: by 2002:adf:e8d2:: with SMTP id k18mr31173374wrn.229.1566924435608;
        Tue, 27 Aug 2019 09:47:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566924435; cv=none;
        d=google.com; s=arc-20160816;
        b=JqS7lrwQPUxkGZkzdZbzMWYrs1SaMXDheOuuK0XCKS0za62J4Hj0aILG6WQUJNgvXN
         8vWSmsMDD+1l7Fy/ldCtC3XnXLXLXOrLadY8MaI6wghxyzIWO3MgiJevwOA/1w3gWuOj
         iOxRwW7kG9FFD+ly9PdkG9GsCq/dvE3Cmlw4Khtf4mXGAOUHbAh7wylzxXw27S5JU3jY
         IgRWVG37pAFKNBX7mHASriuvNzSklDpNQh10O+2Dw9diJYA5r7zzkkXqdI+Hp0UQ93UG
         OxFo7QV9cg4VHgIkjh4TqfBDZYZ1uzE2cJ8cHeSbqvCkJMLmjzesUBqegTPIU9zhYC/6
         c/zA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version;
        bh=83Jnn+lYvZhWilMjh//uRA36kKFCssBPDfUrkcLCEa4=;
        b=VEs0p48SHiTxzaNRQksvRb5lgjcZ3GeXHa6pc7urZE1yi0+2R4HV7tqqSU9M07h36Y
         3IiOz/IqNZY/tC5MBxo9VRaJd0QF8o9tVocLBMi6D42abqgFp6bFNKStMYW5PfmQ1uOK
         JU5btu4PSiTalpfGF0i/kFvbPQsOHYPRqy32zXX43a2yhJfVIUpS953NWJ8OBzFcufeG
         yOwpOG7TZKP/As9arDkleGMuISlO9793xunPuI8pHIz50iEU9O65fWzHjxZz5nzsMhEv
         Q14V6Vp6aNQP8dxH2lqFK5bbjp2NP7cH6Y3zGhIMqB6t9eSN5j1P9ewXO52NN2oiVd6j
         8P3w==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: best guess record for domain of kai.heng.feng@canonical.com designates 91.189.89.112 as permitted sender) smtp.mailfrom=kai.heng.feng@canonical.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=canonical.com
Received: from youngberry.canonical.com (youngberry.canonical.com. [91.189.89.112])
        by mx.google.com with ESMTPS id v12si2818802wml.71.2019.08.27.09.47.15
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Tue, 27 Aug 2019 09:47:15 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of kai.heng.feng@canonical.com designates 91.189.89.112 as permitted sender) client-ip=91.189.89.112;
Received: from mail-pg1-f199.google.com ([209.85.215.199])
	by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
	(Exim 4.76)
	(envelope-from <kai.heng.feng@canonical.com>)
	id 1i2eck-0008LR-Sl
	for usb-storage@lists.one-eyed-alien.net; Tue, 27 Aug 2019 16:47:15 +0000
Received: by mail-pg1-f199.google.com with SMTP id l11so12115436pgc.14
        for <usb-storage@lists.one-eyed-alien.net>; Tue, 27 Aug 2019 09:47:14 -0700 (PDT)
X-Received: by 2002:a17:902:860b:: with SMTP id f11mr25071963plo.48.1566924433608;
        Tue, 27 Aug 2019 09:47:13 -0700 (PDT)
X-Received: by 2002:a17:902:860b:: with SMTP id f11mr25071938plo.48.1566924433252;
        Tue, 27 Aug 2019 09:47:13 -0700 (PDT)
Received: from 2001-b011-380f-3c42-843f-e5eb-ba09-2e70.dynamic-ip6.hinet.net (2001-b011-380f-3c42-843f-e5eb-ba09-2e70.dynamic-ip6.hinet.net. [2001:b011:380f:3c42:843f:e5eb:ba09:2e70])
        by smtp.gmail.com with ESMTPSA id 131sm17042232pge.37.2019.08.27.09.47.11
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Aug 2019 09:47:12 -0700 (PDT)
Content-Type: text/plain; charset="UTF-8"; delsp=yes; format=flowed
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Subject: [usb-storage] Re: [PATCH v2 2/2] USB: storage: ums-realtek: Make
 auto-delink support optionally
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
In-Reply-To: <Pine.LNX.4.44L0.1908261141110.1662-100000@iolanthe.rowland.org>
Date: Wed, 28 Aug 2019 00:47:08 +0800
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-usb@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: quoted-printable
Message-Id: <3708E7CE-1CE9-4542-8C6D-8019650DB419@canonical.com>
References: <Pine.LNX.4.44L0.1908261141110.1662-100000@iolanthe.rowland.org>
To: Alan Stern <stern@rowland.harvard.edu>
X-Mailer: Apple Mail (2.3445.104.11)
X-Original-Sender: kai.heng.feng@canonical.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 best guess record for domain of kai.heng.feng@canonical.com designates
 91.189.89.112 as permitted sender) smtp.mailfrom=kai.heng.feng@canonical.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=canonical.com
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
X-Spam-Checked-In-Group: usb-storage@lists.one-eyed-alien.net
X-Google-Group-Id: 960895140360
List-Post: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/post>,
 <mailto:usb-storage@lists.one-eyed-alien.net>
List-Help: <https://support.google.com/a/lists.one-eyed-alien.net/bin/topic.py?topic=25838>,
 <mailto:usb-storage+help@lists.one-eyed-alien.net>
List-Archive: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/>
List-Subscribe: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/subscribe>,
 <mailto:usb-storage+subscribe@lists.one-eyed-alien.net>
List-Unsubscribe: <mailto:googlegroups-manage+960895140360+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/subscribe>

at 23:55, Alan Stern <stern@rowland.harvard.edu> wrote:

> On Mon, 26 Aug 2019, Kai-Heng Feng wrote:
>
>> Auto-delink requires writing special registers to ums-realtek device.
>> Unconditionally enable auto-delink may break newer devices.
>>
>> So only enable auto-delink by default for the original three IDs,
>> 0x0138, 0x0158 and 0x0159.
>>
>> Realtek is working on a patch to properly support auto-delink for other
>> IDs.
>>
>> BugLink: https://bugs.launchpad.net/bugs/1838886
>> Signed-off-by: Kai-Heng Feng <kai.heng.feng@canonical.com>
>> ---
>> v2:
>> - Use auto_delink_support instead of auto_delink_enable.
>>
>> drivers/usb/storage/realtek_cr.c | 24 +++++++++++++++++++-----
>>  1 file changed, 19 insertions(+), 5 deletions(-)
>>
>> diff --git a/drivers/usb/storage/realtek_cr.c =20
>> b/drivers/usb/storage/realtek_cr.c
>> index beaffac805af..b304cca7c4fa 100644
>> --- a/drivers/usb/storage/realtek_cr.c
>> +++ b/drivers/usb/storage/realtek_cr.c
>> @@ -40,6 +40,10 @@ static int auto_delink_en =3D 1;
>>  module_param(auto_delink_en, int, S_IRUGO | S_IWUSR);
>>  MODULE_PARM_DESC(auto_delink_en, "auto delink mode (0=3Dfirmware, 1=3Ds=
oftware [default])");
>>
>> +static int auto_delink_support =3D -1;
>> +module_param(auto_delink_support, int, S_IRUGO | S_IWUSR);
>> +MODULE_PARM_DESC(auto_delink_support, "enable auto delink (-1=3Dauto =
=20
>> [default], 0=3Ddisable, 1=3Denable)");
>> +
>>  #ifdef CONFIG_REALTEK_AUTOPM
>>  static int ss_en =3D 1;
>>  module_param(ss_en, int, S_IRUGO | S_IWUSR);
>> @@ -996,12 +1000,22 @@ static int init_realtek_cr(struct us_data *us)
>>  			goto INIT_FAIL;
>>  	}
>>
>> -	if (CHECK_FW_VER(chip, 0x5888) || CHECK_FW_VER(chip, 0x5889) ||
>> -	    CHECK_FW_VER(chip, 0x5901))
>> -		SET_AUTO_DELINK(chip);
>> -	if (STATUS_LEN(chip) =3D=3D 16) {
>> -		if (SUPPORT_AUTO_DELINK(chip))
>> +	if (auto_delink_support =3D=3D -1) {
>> +		if (CHECK_PID(chip, 0x0138) || CHECK_PID(chip, 0x0158) ||
>> +		    CHECK_PID(chip, 0x0159))
>> +			auto_delink_support =3D 1;
>> +		else
>> +			auto_delink_support =3D 0;
>> +	}
>
> What will happen if somebody has two Realtek devices plugged in, where
> one of them has an old product ID and the other has a new one?  You
> shouldn't change the value of the module parameter like this.

You are right, I didn=E2=80=99t think of that.

>
>> +
>> +	if (auto_delink_support) {
>> +		if (CHECK_FW_VER(chip, 0x5888) || CHECK_FW_VER(chip, 0x5889) ||
>> +				CHECK_FW_VER(chip, 0x5901))
>>  			SET_AUTO_DELINK(chip);
>> +		if (STATUS_LEN(chip) =3D=3D 16) {
>> +			if (SUPPORT_AUTO_DELINK(chip))
>> +				SET_AUTO_DELINK(chip);
>> +		}
>>  	}
>>  #ifdef CONFIG_REALTEK_AUTOPM
>>  	if (ss_en)
>
> Instead of adding a new module parameter, how about just changing the
> driver's behavior?  If a chip doesn't have the right product ID, don't
> enable auto_delink regardless of what the module parameter is set to.

Ok, I think whitelist is a better approach until Realtek comes up with a =
=20
long term solution.

Kai-Heng

>
> Alan Stern


--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/3708E7CE-1CE9-4542-8C6D-8019650DB419=
%40canonical.com.
