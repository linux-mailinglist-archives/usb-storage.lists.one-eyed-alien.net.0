Return-Path: <usb-storage+bncBD6LRVPZ6YGRBVG4X35AKGQEWXVLAFY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-il1-x145.google.com (mail-il1-x145.google.com [IPv6:2607:f8b0:4864:20::145])
	by mail.lfdr.de (Postfix) with ESMTPS id 0644225AD55
	for <lists+usb-storage@lfdr.de>; Wed,  2 Sep 2020 16:38:14 +0200 (CEST)
Received: by mail-il1-x145.google.com with SMTP id c11sf2119192ilm.0
        for <lists+usb-storage@lfdr.de>; Wed, 02 Sep 2020 07:38:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599057492; cv=pass;
        d=google.com; s=arc-20160816;
        b=0If9q8C0J1bm3arW4+W6cyPkCoXsNMU1KsCcrETJDX56sRNX0NP8/SWBJVEe5oNVs/
         Q5C0Qp2fNgjuRlf/j04Q3VLKS3z42v/iSDcmwhrEmlVgdUT/MAfbrhdLbnNBoAxsLMd1
         d1gZSKfLCQi/+zd8nkE/tFI8/beQXWd7zveu2VbYZW49UB5L5PF7to7M4Yn+jKFC6E4W
         CIL1RkwS28pFZYtxIBaUa2vVS0r+gPwmi/ijjM+DDoNAUWzw8tehqrF+B4/GtnZJqj6Q
         YadYoIMVPcHDLYyt4j97gowP8b/vGD0MoCsKhqWOfMpoyakmvjcVoDBT+pXVTnPejUHu
         w+lA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=GUwj1816zFbTe5LPn1oeHgst2guWuwAQezIcJfxrUdg=;
        b=CaXpzCOg0XfCT9QHhxIV7KClbaCvd9OpKwvdPKpUTjscJHuvfyUwOJogz0XG/GmH80
         Qu65IMkSDQNKid/4kNwy1zMYxGi8P4Ox1x4EFpi0i4V7tmu7M3L0vcMJR1v1cJWZL+ca
         apoKB1MhbdmngeWB2gv21B9VPiKGaLY53VSTf6ubo6EOie1az5t3izUxBaWC9XyO6uJe
         XOwSHoL93vMfCu9J6l1reSM5kEGh6vuORIYI5jKOHRR9fqHysnlKleib4NuhUUkuhBrg
         oXYxUtxOg1Yny12TznHV2kcpGNL3WHh6UGmeinHyW8THNF/g8oLRhgFL8Pgd6tm/LqVu
         Y/8A==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+5f4942ce@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+5f4942ce@netrider.rowland.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GUwj1816zFbTe5LPn1oeHgst2guWuwAQezIcJfxrUdg=;
        b=fqJJYjwmRBx7fbuA0TcevnZblzdQUNB2JAyS9BDjpmrndXwtSnoc9yNgNkaK6CgKVG
         c5OYgoJ4QTOJT+ywv2kZTDFb8+WngThGIZC+dryh18balkPFQJOUBl2z4GkT3NuLKcKl
         nJDJmuLs3456bht3QuUwJ1/gGmQgWCQyyWruc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=GUwj1816zFbTe5LPn1oeHgst2guWuwAQezIcJfxrUdg=;
        b=QLVL6FSJJRrHMX9SwIlcuf+HKAKo+75pYktFGehCxeIWJvWDHqA2tic1BdGMdfKU/u
         a2OE2QSljHAR+/b+7Iz8SeFzIVeoY67BlItQwzIDU2vdHclv5IEbf0346PvtKpLPrXhH
         /ZvnSl+IZxYsSHNb2a4zPSI7qbKs7JSLMEqbVYCP5JLitFDbrvwZ1Vef/Y7pvq9stQ5G
         rpEMAmVQWq2r8/lgOITLlRPrtmQO8tHH08PagC4Hu6+qrdHLN/DN9jeP/DKUI0uSqxbD
         2L7ICJeVIGwgn8Z0aWiT/rKeOWyd3jm2kQc/geeHyWX7/Bf985LPkh954Y9C3WajSGVw
         2u1Q==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM530L65gZXiQv6+wObb8zl7c9YIwVaTW8of3m1FEM6iVuY9TWRTY1
	+YkkcNhW1kWkXjn49LT5WwSIMg==
X-Google-Smtp-Source: ABdhPJxZioQDwZEi0MCufSWAXagl8l5bI5JibthHijFwPzveUTdSgG40Au3mbAGntZWfFR7Sf+FFow==
X-Received: by 2002:a92:6a03:: with SMTP id f3mr3788262ilc.217.1599057492645;
        Wed, 02 Sep 2020 07:38:12 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a5d:9d52:: with SMTP id k18ls446435iok.3.gmail; Wed, 02 Sep
 2020 07:38:12 -0700 (PDT)
X-Received: by 2002:a05:6602:2043:: with SMTP id z3mr3589743iod.93.1599057492062;
        Wed, 02 Sep 2020 07:38:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599057492; cv=none;
        d=google.com; s=arc-20160816;
        b=azB7oLbUNltm++HqcRk9x7wmJQP3ZD5mupABwfb5pptOdpQocPwFzSbp/6p5FEnVYr
         FcH1R6mcUqt5go7A3kz1tlqhD6LhFZluUfLIRwGCKsv/68M0hhyE0tvGkVNTWT8T6oyy
         UIo+B8TAr1QCJ/x+Zwh8NT5NCxO53gqEDWapkqkDVETTZQzSZS/yiFGIIQ6sPfP4N4zc
         un4IfXPpva3+ES5hSoo7dU9InA7Mgj2dM2Zd52WxSQ9LcKdNq6F1bIon6O5inmjcdF3K
         +NyKm6PwweUc6tOyPXvpYGWr/7MrzHk2tcwoUmVSOnnbZoRzSgtZ9YakV1hbuhm7E0wr
         PmQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=xzFrplMfePJLbQ1HhMnfCc/t3OvkvfCTUMfvYJmFgFw=;
        b=oksFFm2esYsKwSdk8ILBYz7A8VIgCxofH6QUFeILgSM5qW9Vi5qq+mCMjq3veZ3yJl
         ddpCaEZwRwNk8wVLs/m9Az1muGHmnZmYuNUODHz+qbXk47wwX84cB11lvktvZJNOIm+8
         55PmcsAfJJDjj1KcjVBc7t/ZZQHS/3ZNDGni2iSBdzwFxt+mGGG2ETPYN/f9Eixds2SA
         5303VYcZ5QYQNZX97HIa+qNFsCgo5Iyot7YppLWSFDP8zjQdOOhmeLDrGtXF9XYqqfMR
         Ct8V2bXM9yesBkfKttaHPCjTMYrcNLy/wbk+fg0f1yKvfVYeC6szQ68jonoLUYDluWBH
         x07Q==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+5f4942ce@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+5f4942ce@netrider.rowland.org
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id r15si4125489iln.160.2020.09.02.07.38.11
        for <usb-storage@lists.one-eyed-alien.net>;
        Wed, 02 Sep 2020 07:38:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+5f4942ce@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 624190 invoked by uid 1000); 2 Sep 2020 10:38:11 -0400
Date: Wed, 2 Sep 2020 10:38:11 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Jean-Francois Pirus <jfp@clearfield.com>
Cc: usb-storage@lists.one-eyed-alien.net, linux-usb@vger.kernel.org
Subject: [usb-storage] Re: copy/paste error in unusual_uas.h  from commit bc3bdb1
Message-ID: <20200902143811.GA622814@rowland.harvard.edu>
References: <8b0d02a71c781c1325a491f6450df0876d724d85.camel@clearfield.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <8b0d02a71c781c1325a491f6450df0876d724d85.camel@clearfield.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+5f4942ce@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+5f4942ce@netrider.rowland.org
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

On Wed, Sep 02, 2020 at 05:14:12PM +1200, Jean-Francois Pirus wrote:
> Looks like a copy/paste error from the previous entry.

It may look like a copy-paste error, but it isn't.  You can tell if you 
go back and read the emails that led up to this commit.

> patch:
> 
> --- unusual_uas.h.org	2020-09-02 17:00:32.295919812 +1200
> +++ unusual_uas.h	2020-09-02 17:01:02.596173298 +1200
> @@ -69,7 +69,7 @@
>  /* Reported-by: David Kozub <zub@linux.fjfi.cvut.cz> */
>  UNUSUAL_DEV(0x152d, 0x0578, 0x0000, 0x9999,
>  		"JMicron",
> -		"JMS567",
> +		"JMS578",
>  		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
>  		US_FL_BROKEN_FUA),

The same entry is present in unusual_devs.h (as you would see if you had 
read the original commit).  How come you didn't change that one as well?

Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20200902143811.GA622814%40rowland.harvard.edu.
