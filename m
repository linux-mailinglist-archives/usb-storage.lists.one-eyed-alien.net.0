Return-Path: <usb-storage+bncBD6LRVPZ6YGRBZXZSXVQKGQERS5X4HY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x847.google.com (mail-qt1-x847.google.com [IPv6:2607:f8b0:4864:20::847])
	by mail.lfdr.de (Postfix) with ESMTPS id B7CFB9F2C2
	for <lists+usb-storage@lfdr.de>; Tue, 27 Aug 2019 20:56:39 +0200 (CEST)
Received: by mail-qt1-x847.google.com with SMTP id l22sf17211390qtq.5
        for <lists+usb-storage@lfdr.de>; Tue, 27 Aug 2019 11:56:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566932198; cv=pass;
        d=google.com; s=arc-20160816;
        b=XcQuFyXk9F5l3Fb6FTrQ7iCcmg62abPpPdJf6W5uVHbGfqx8PbyC/YQNRENGOUTtzS
         k4N/A/pdxfsEyOTPOCr9UI1y6JALYu+Em5cNVchoVEJ1uhvrbG80k/nnuBaIwn06gNNp
         8FAdubKVO7GsVZByQUBVghoFkTrw8GuJTx0eexyy3IYet/34il1M8QycBlRUA1eLZbMU
         PoV9ksaZFubbdX3rzGMlMvef9RX/5UCteJJFGMUWP4hdiGfBZ/5G7erO53pWo6Gm119v
         0W6LdakXP3f13zckUVCzo1Kkgg7wtF91bKChtmBngZrgAHb5AMRSIUrafIBjBv/9dC7g
         b4gw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:in-reply-to
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=kfMEzYrpUfTY0i3m21REaC+jEYUl5NOuebNc2z99RmU=;
        b=GdWjuB+cUwhcAE08ObMn/VQB6Bi2iKhQRQdEu0Oy4ba7UA53rG200O8e41jx2GuQaN
         eE1AmmpSoxmIhOINOiQtQhMhIZuLEqXVtVmSCwGPdeRr/Xj1IWYOVnD3ALF72VEqqL8I
         FjbG0pfB4lRw8UsWkh8gvPpxiiXmHHNcZZ/f1y0+5XpF/kof9rHrWFProlg/uiCPjXqc
         fkQDt9RE0s7nOKeqVO3IUN01j7Q8UDzRbYo/1NXd9PaLayrwEsBsZbnod63j6mcbi6vV
         vc4h93S9luvboajyrM0YmM+emLNYajOPBRfTBw2Lu5ZCrHFJCtBb28gITniiwWhN/u5E
         tjTw==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+5d707244@rowland.harvard.edu designates 192.131.102.54 as permitted sender) smtp.mailfrom=stern+5d707244@rowland.harvard.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kfMEzYrpUfTY0i3m21REaC+jEYUl5NOuebNc2z99RmU=;
        b=U8Lg+QgveNJtZm3pVJmP/R9Z0iq/z1zzAIC90m+tHKPVhQdM11crA2TLRYcFGeRbWz
         7R+7LuSgieQbdrQAI8rC4Q9rZCGv1l7Ci+EaPugUJl2Z88rAwE+XMrn6KgcEpeyKXNeF
         vMMyqgOBE1MQRfCTfbP+hqwJGWgKd+MBYi8RI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kfMEzYrpUfTY0i3m21REaC+jEYUl5NOuebNc2z99RmU=;
        b=emxhcN+vk1fkJ321VvEt9n56zYmJI1o0j7+SZrZ/V/qdoX93ueMBdRAv1ltG+hFP0r
         ZMYtl7FBNUpagh9jwXDKXqjJkIvN3LG8J7Y0NgfbgJcf2jbLIHkorqH8IcgNJQRULJu5
         80sk2EuGZ0wZYsCZ/TB1UxJnAAxFJzlVepKPLDLdsm3oCmXWvz14oL/U4Fu9xjuIYLTg
         FzSuT/UGaGz1/l8EVg3IFmIfBd77cjBp5EpPvLxp7kGQ57fqxJc674MLl01zHeGZjoH+
         yYPcgxQ2Q4x/z3ln3EuPGoqon5/esHnagpYPP5tQMjirSayY9HsWuWKzAuA6JbH/ZvBM
         EukQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAWwb6nOTikCeXGS+hPaRNoDD1zPH05242MhjZJYdZywhgpWy4uN
	KD0sfUV1bS5zwk252S7ERRcg1w==
X-Google-Smtp-Source: APXvYqxXT3anE/QIWPpWkuHgV8Qs+3p7uKh81GmH6GA7D/Ctqt5Vu/80cUm39wnEEplDhg85pvoCJw==
X-Received: by 2002:a37:a484:: with SMTP id n126mr23414243qke.73.1566932198368;
        Tue, 27 Aug 2019 11:56:38 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ac8:65d3:: with SMTP id t19ls1947074qto.9.gmail; Tue, 27 Aug
 2019 11:56:37 -0700 (PDT)
X-Received: by 2002:ac8:5315:: with SMTP id t21mr370128qtn.66.1566932197857;
        Tue, 27 Aug 2019 11:56:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566932197; cv=none;
        d=google.com; s=arc-20160816;
        b=W7tYEGtWdslFcqEQW62MiOtJzh0OuTiEOj0x44/ghk47KLqA8PuV0wOZADBBCLrSkF
         MRhW5G/OknDTHOFRwKnN0kewxkHoW+E4T/KD82O9QtRWl02SWX3S3J/U+dVqisC+SQVZ
         AC1R1FjFFRpaPe2jVelLdi5l26xMoxUrALWUcwJaq+s79wQqUp0UnxB5VDxc9nNeNqWN
         6OhdHpig5USCJTsLMOmhyq/E5Cyb2si32ykp7VQgcEUnic/qw2I1PtJKP4LqRE3QJi3T
         H7cynvOHgghpNuYJwsCY29h55PyOxO+vJdp1EpE3DoskbhL18ZoXmeFKkMiLEsTzDgje
         LavA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:in-reply-to:subject:cc:to:from:date;
        bh=kfMEzYrpUfTY0i3m21REaC+jEYUl5NOuebNc2z99RmU=;
        b=AG+dBqZR0f4Yve3OEqM1EyhYVVhWTGYyCccft2PaKSKBetEdO37a6cYI3byZQ853s4
         fIYsQPO6wMLDWaI+S/2tspR8Wh19Fj8yA2qFt9WVDS5jrsJov+Z5bPF/S9Zuqw1PvskL
         oD4YFFIXcFdIvOfRLeSVttscmB0+aUlawac/rVTp8d3KZqRkqHoaqaXyLxl//CpPXRkV
         2QQWYb5jTP2HnGwD+TFa4zWbnHQhOvM1siuCjy4ZN56iqrDFIG1t+IpplIdnJFrOigfe
         81dhq0oUoA48SpiyVzCjWIthb3rFj+mcaCfVfPbzYMHia1Y3ho8UKo89eTYRZtdHvRuc
         xnUQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+5d707244@rowland.harvard.edu designates 192.131.102.54 as permitted sender) smtp.mailfrom=stern+5d707244@rowland.harvard.edu
Received: from iolanthe.rowland.org (iolanthe.rowland.org. [192.131.102.54])
        by mx.google.com with SMTP id q30si10706774qtj.77.2019.08.27.11.56.37
        for <usb-storage@lists.one-eyed-alien.net>;
        Tue, 27 Aug 2019 11:56:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+5d707244@rowland.harvard.edu designates 192.131.102.54 as permitted sender) client-ip=192.131.102.54;
Received: (qmail 1525 invoked by uid 2102); 27 Aug 2019 14:56:36 -0400
Received: from localhost (sendmail-bs@127.0.0.1)
  by localhost with SMTP; 27 Aug 2019 14:56:36 -0400
Date: Tue, 27 Aug 2019 14:56:36 -0400 (EDT)
From: Alan Stern <stern@rowland.harvard.edu>
X-X-Sender: stern@iolanthe.rowland.org
To: Kai-Heng Feng <kai.heng.feng@canonical.com>
cc: gregkh@linuxfoundation.org,  <bauer.chen@realtek.com>, 
     <ricky_wu@realtek.com>,  <linux-usb@vger.kernel.org>, 
     <usb-storage@lists.one-eyed-alien.net>,  <linux-kernel@vger.kernel.org>
Subject: [usb-storage] Re: [PATCH v3 2/2] USB: storage: ums-realtek: Whitelist
 auto-delink support
In-Reply-To: <20190827173450.13572-2-kai.heng.feng@canonical.com>
Message-ID: <Pine.LNX.4.44L0.1908271454110.1545-100000@iolanthe.rowland.org>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+5d707244@rowland.harvard.edu designates 192.131.102.54 as
 permitted sender) smtp.mailfrom=stern+5d707244@rowland.harvard.edu
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

On Wed, 28 Aug 2019, Kai-Heng Feng wrote:

> Auto-delink requires writing special registers to ums-realtek devices.
> Unconditionally enable auto-delink may break newer devices.
> 
> So only enable auto-delink by default for the original three IDs,
> 0x0138, 0x0158 and 0x0159.
> 
> Realtek is working on a patch to properly support auto-delink for other
> IDs.
> 
> BugLink: https://bugs.launchpad.net/bugs/1838886
> Signed-off-by: Kai-Heng Feng <kai.heng.feng@canonical.com>
> ---
> v3:
> - Whitelisting instead of adding new module parameter.
> v2:
> - Use auto_delink_support instead of auto_delink_enable.
> 
>  drivers/usb/storage/realtek_cr.c | 13 ++++++++-----
>  1 file changed, 8 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/usb/storage/realtek_cr.c b/drivers/usb/storage/realtek_cr.c
> index beaffac805af..1d9ce9cbc831 100644
> --- a/drivers/usb/storage/realtek_cr.c
> +++ b/drivers/usb/storage/realtek_cr.c
> @@ -996,12 +996,15 @@ static int init_realtek_cr(struct us_data *us)
>  			goto INIT_FAIL;
>  	}
>  
> -	if (CHECK_FW_VER(chip, 0x5888) || CHECK_FW_VER(chip, 0x5889) ||
> -	    CHECK_FW_VER(chip, 0x5901))
> -		SET_AUTO_DELINK(chip);
> -	if (STATUS_LEN(chip) == 16) {
> -		if (SUPPORT_AUTO_DELINK(chip))
> +	if (CHECK_PID(chip, 0x0138) || CHECK_PID(chip, 0x0158) ||
> +	    CHECK_PID(chip, 0x0159)) {
> +		if (CHECK_FW_VER(chip, 0x5888) || CHECK_FW_VER(chip, 0x5889) ||
> +				CHECK_FW_VER(chip, 0x5901))
>  			SET_AUTO_DELINK(chip);
> +		if (STATUS_LEN(chip) == 16) {
> +			if (SUPPORT_AUTO_DELINK(chip))
> +				SET_AUTO_DELINK(chip);
> +		}
>  	}
>  #ifdef CONFIG_REALTEK_AUTOPM
>  	if (ss_en)

For both patches in this series:

Acked-by: Alan Stern <stern@rowland.harvard.edu>

Shouldn't this patch go into the -stable kernels as well?

Alan Stern

