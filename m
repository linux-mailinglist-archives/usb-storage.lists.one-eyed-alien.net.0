Return-Path: <usb-storage+bncBD6LRVPZ6YGRB74BSDVQKGQELHKWMVQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x746.google.com (mail-qk1-x746.google.com [IPv6:2607:f8b0:4864:20::746])
	by mail.lfdr.de (Postfix) with ESMTPS id F0CEE9D375
	for <lists+usb-storage@lfdr.de>; Mon, 26 Aug 2019 17:55:44 +0200 (CEST)
Received: by mail-qk1-x746.google.com with SMTP id a197sf16137603qkg.12
        for <lists+usb-storage@lfdr.de>; Mon, 26 Aug 2019 08:55:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566834943; cv=pass;
        d=google.com; s=arc-20160816;
        b=HB8S2+dlYN7rSGOxG6bwp3d/wFuXK5iRu50KAWxTnKDwbMlXes4EzDG8xhL/Q7LKjG
         aglMXHp1/CPTVq6X6GSnP6lXn6dpbBPFg/AgLUgZt15pI9gb4WF65YlaOrfUIwVD4f6d
         Q1/xnl3Y7f+fVg9fuMdHwgKKnJD3P9kYSuSeURIdEzuRHnCq5dugEbzwbKWqqin7Sa2K
         rpwey0S6MCcD4BPPz5sBCbWeD0eHPAflm2EleHYetLijWWr2KZmYzd71MB875U2FyqCE
         FVAmZqIRKvBAX4I3kTH9IpP6X4PNXkCEKzeeaTvOWegTu3JYc2qCgbrMb402HM3Oh7mj
         Praw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:in-reply-to
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=SN4p19RMgGB6wsdXB9uq4DDmGaSb0hNgJmBwqoMZZ/w=;
        b=dt2neDhf8UoEntwlwkljAC50063oMBEMlUsCDJaojePEOqqCIFSgwWDYaSaequrL+n
         Wdy+wITpdCS7ViR0XBV0WyA/jPQ8oGClqSo0rkETXQ4UuXtFAs2sfLru7gIOGDB44g8Z
         JQEs+J9AgeiCp6byxCjmU+Gmgq6gKfXxyk8r/we7A13sJcr5awUCMXjz1fuGC29byacb
         EBWlwSREuVu/GTknkkGPwcxaZ6eQpntbTQ+pdWKboNRUCNz63ptNwGRCL5Koj9Hcmo54
         dF09i1QecmzZjq+/3kzuoEEovRp8Jg9MhYIoW4PNmZaJ+wKySFseUJiDtmUO7fIo987d
         mKEA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+5d707244@rowland.harvard.edu designates 192.131.102.54 as permitted sender) smtp.mailfrom=stern+5d707244@rowland.harvard.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SN4p19RMgGB6wsdXB9uq4DDmGaSb0hNgJmBwqoMZZ/w=;
        b=W6IoUSIJg/dDUHJm4g1MmseInus7mV9W9N5hcZWZG6PxnzxpwPtDQaDCk6v2xdjz89
         Yd3d7fTlpIhPLfgyBtNOA6tNQerm0S9Xlecxekr5jiHYa9i6OV3Uphapxn4uw3na73eT
         10W4O3mH+xqUlcNo0QGxx5DmPF0ieAi8QYQ9M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SN4p19RMgGB6wsdXB9uq4DDmGaSb0hNgJmBwqoMZZ/w=;
        b=S2Br1g+AKZtMiRu+vS2GgWtQjyeNqGJYdWDaltI63Y2PEySMk0iOINkUz50M/s58dZ
         tDiGClxY2Jz25qpu9RFnrGZpbqDdmVfsLXGJjBwZShltnUDWQEIxA0x+3mlvuYlst2RR
         5s4Q5Mwa+gx98uaTFyARLCbSqUwC+lqlxEe1FBT5klKVVqRzrCv5zmzNyVW9xhKE6n3t
         2fJAYQOlrbUv2OGC2zgXzaL29cMini65tpxhIOkL0kx784GmW+uoTFV0vQ9yWR8xN4KP
         /trD9qZP2w0yBuhIA0eC89Pc/NaoU+HWDJP2oUvymnGQ+D8JcUOoj9n8AO3KciP9cMeJ
         b5ew==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAUgM7ajJna7qGu9dPQH80ict92S2D3CYAgLXgMupdKuplxXU0SC
	p861gSmuYwLGB8Qe1Qqq6yN5lw==
X-Google-Smtp-Source: APXvYqzImES5WlP1Tp/4zlMbYNZidfJwyg8+fSO4+hcvAEsOtZ7Tg+WKDdDgBZEguXqqLot7UfEgDg==
X-Received: by 2002:ae9:e648:: with SMTP id x8mr17018996qkl.247.1566834943809;
        Mon, 26 Aug 2019 08:55:43 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a37:9d4f:: with SMTP id g76ls903736qke.0.gmail; Mon, 26 Aug
 2019 08:55:43 -0700 (PDT)
X-Received: by 2002:a37:5008:: with SMTP id e8mr16346933qkb.314.1566834943321;
        Mon, 26 Aug 2019 08:55:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566834943; cv=none;
        d=google.com; s=arc-20160816;
        b=SY3wqeHFj++qC13TLQA6wZMzESqqYN1nyqkh6KbvIl43iPEQmsDI/jc3PGkoxzISzt
         QvO3Ji+ytsCsswGhw14frjfwXnX7OzJpRrpTIpjzdBpSwvmTAnESRN6px2AbEj1q12te
         KYZ3AfxfrWw1L9FD7o2tMGurWWs+EkuEDVfNxK+Pm+w3E235/4POVPer1XRyOOnoUuQs
         6DUjyRQPMdNxETVWjnuKJFBlUV++3FVZIbzpFLulFdidaNkMfeG4ezyKZR2IWYdik2MI
         qmlpEQE+v2mycICLr2cefsCyFCgYUWS0f7vj6i9r5L3l0+ZKqGqIKfi9zJVDmlnSzOP0
         1B9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:in-reply-to:subject:cc:to:from:date;
        bh=SN4p19RMgGB6wsdXB9uq4DDmGaSb0hNgJmBwqoMZZ/w=;
        b=mC1RQHyD0hJE5F+vFqNyBzFLGNyNSBScID1YAHpcc++5blEbiQzJo3Ml/MsiNhBZqa
         jeAAL/TG90s7ar2BpjR1Z15MBSHbGgAnF9Bma1VsJZH4ZD3b5y97/+G9CDx6P4jmJ9/e
         a3qT/MaVoErgS+SLMQvHOkoYAmDmYlv7sPJMF0qg0aO/ZPTDCYTmb1zefX2ApmuucSNm
         oSX7igr+5CloYiqOtTeS4iCp+priKBuVF8g71wgQ/Ub3/W1zqJnKb2NrzM6S/KKNWwji
         naIoXzeEAKthyJ27wkJuYpbLHSL3XgQ6fsn/f+Z58/syzAXWQV/ql1RCq5ogLdg9OIbB
         6SqQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+5d707244@rowland.harvard.edu designates 192.131.102.54 as permitted sender) smtp.mailfrom=stern+5d707244@rowland.harvard.edu
Received: from iolanthe.rowland.org (iolanthe.rowland.org. [192.131.102.54])
        by mx.google.com with SMTP id l37si8630354qta.326.2019.08.26.08.55.43
        for <usb-storage@lists.one-eyed-alien.net>;
        Mon, 26 Aug 2019 08:55:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+5d707244@rowland.harvard.edu designates 192.131.102.54 as permitted sender) client-ip=192.131.102.54;
Received: (qmail 4673 invoked by uid 2102); 26 Aug 2019 11:55:42 -0400
Received: from localhost (sendmail-bs@127.0.0.1)
  by localhost with SMTP; 26 Aug 2019 11:55:42 -0400
Date: Mon, 26 Aug 2019 11:55:42 -0400 (EDT)
From: Alan Stern <stern@rowland.harvard.edu>
X-X-Sender: stern@iolanthe.rowland.org
To: Kai-Heng Feng <kai.heng.feng@canonical.com>
cc: gregkh@linuxfoundation.org,  <linux-usb@vger.kernel.org>, 
     <usb-storage@lists.one-eyed-alien.net>,  <linux-kernel@vger.kernel.org>
Subject: [usb-storage] Re: [PATCH v2 2/2] USB: storage: ums-realtek: Make
 auto-delink support optionally
In-Reply-To: <20190826054216.31468-2-kai.heng.feng@canonical.com>
Message-ID: <Pine.LNX.4.44L0.1908261141110.1662-100000@iolanthe.rowland.org>
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

On Mon, 26 Aug 2019, Kai-Heng Feng wrote:

> Auto-delink requires writing special registers to ums-realtek device.
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
> v2:
> - Use auto_delink_support instead of auto_delink_enable.
> 
> drivers/usb/storage/realtek_cr.c | 24 +++++++++++++++++++-----
>  1 file changed, 19 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/usb/storage/realtek_cr.c b/drivers/usb/storage/realtek_cr.c
> index beaffac805af..b304cca7c4fa 100644
> --- a/drivers/usb/storage/realtek_cr.c
> +++ b/drivers/usb/storage/realtek_cr.c
> @@ -40,6 +40,10 @@ static int auto_delink_en = 1;
>  module_param(auto_delink_en, int, S_IRUGO | S_IWUSR);
>  MODULE_PARM_DESC(auto_delink_en, "auto delink mode (0=firmware, 1=software [default])");
>  
> +static int auto_delink_support = -1;
> +module_param(auto_delink_support, int, S_IRUGO | S_IWUSR);
> +MODULE_PARM_DESC(auto_delink_support, "enable auto delink (-1=auto [default], 0=disable, 1=enable)");
> +
>  #ifdef CONFIG_REALTEK_AUTOPM
>  static int ss_en = 1;
>  module_param(ss_en, int, S_IRUGO | S_IWUSR);
> @@ -996,12 +1000,22 @@ static int init_realtek_cr(struct us_data *us)
>  			goto INIT_FAIL;
>  	}
>  
> -	if (CHECK_FW_VER(chip, 0x5888) || CHECK_FW_VER(chip, 0x5889) ||
> -	    CHECK_FW_VER(chip, 0x5901))
> -		SET_AUTO_DELINK(chip);
> -	if (STATUS_LEN(chip) == 16) {
> -		if (SUPPORT_AUTO_DELINK(chip))
> +	if (auto_delink_support == -1) {
> +		if (CHECK_PID(chip, 0x0138) || CHECK_PID(chip, 0x0158) ||
> +		    CHECK_PID(chip, 0x0159))
> +			auto_delink_support = 1;
> +		else
> +			auto_delink_support = 0;
> +	}

What will happen if somebody has two Realtek devices plugged in, where
one of them has an old product ID and the other has a new one?  You
shouldn't change the value of the module parameter like this.

> +
> +	if (auto_delink_support) {
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

Instead of adding a new module parameter, how about just changing the 
driver's behavior?  If a chip doesn't have the right product ID, don't 
enable auto_delink regardless of what the module parameter is set to.

Alan Stern

