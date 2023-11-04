Return-Path: <usb-storage+bncBD6LRVPZ6YGRBY5CTGVAMGQEC4M4QBY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-lj1-x245.google.com (mail-lj1-x245.google.com [IPv6:2a00:1450:4864:20::245])
	by mail.lfdr.de (Postfix) with ESMTPS id 47B817E0FD6
	for <lists+usb-storage@lfdr.de>; Sat,  4 Nov 2023 15:12:52 +0100 (CET)
Received: by mail-lj1-x245.google.com with SMTP id 38308e7fff4ca-2c53ea92642sf27808911fa.2
        for <lists+usb-storage@lfdr.de>; Sat, 04 Nov 2023 07:12:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1699107171; cv=pass;
        d=google.com; s=arc-20160816;
        b=k1sRImXO8+16vOA3YZNGDAFJ4mfaG0c8OWVzG0vo1fzCgEAOpu8rO1KFPB+cwHJ1B1
         613u5w7muRd288iimqlstV/OT1skrZhflEg5wTV3X3oLCFvRLo5anajbI6AR4WXpxw/3
         qQfyaVBQ8e/1XStAa0dCoeuRkics8gfn6tpl8qeEw6SMu3nyOX68uPtJiHeQG2qA4qWo
         IBRLOPV4oEPpRtdGmRSjIHWc8+WTr81JHorz8Rmw+zX036ZNEcucFvnJ7OogFVUJADVZ
         nexir1dA3dejRjMOOTWCm5ctEEoMopjdoEtFAKti+l29YpQYFgf2vynyFOpV2xWsTl7P
         5T+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=X+lczrgW3q14fJxqCxuguB46Xf0Pd0EcWmPDTji9zDY=;
        fh=ldCGyavYp779X2ViOANHPzjiMm1aqt/1VlioTkK72aI=;
        b=M2PRA7Hu2fjRAc12v/RNtI1BIeD2VANqCJzhO8Mve8ezjJkDVR56TsqgR5W0G70cZe
         9FXUhkpipHxOfcsISu3i1VtDMh+Ip95FlBbtgxS53SXsYnFv3B6Peykd3QUOvPDoUyCK
         BAX5726lwWmmaVNkKftUFSM3LS7glGJ67GXjwgfd1aOa7WX3d/iZdE4I6g8+14XEsrdd
         7bABzgnWqQvpdlg4rx5HmgAixsnsy2jN/jxGQB+ZBX7IgguJrIr9pYqDDSdzxM9vdNtl
         E5oRVaJ0JwcGomJ2UB3DuKYiBnxXVu7OXntM9hcyYboxAi8sWeQ3gBnOUiS3HpbCsdKy
         pikQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+6553b73e@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+6553b73e@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1699107171; x=1699711971; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=X+lczrgW3q14fJxqCxuguB46Xf0Pd0EcWmPDTji9zDY=;
        b=CrerHZRJQ+wjbr6bv/ZtHNeUA6K4Jnpae7toA59rhnffo3YDy5O0GydFekr7WAzNv2
         HbTQpGFfULFE3rbT2Z9w88Ylc1jsibDYVnRPLNN6Q49QRb75ERHrjGkGWoWBHf8j2kVn
         YRgRWS03JD6A1hU294hDkH7IbHIJigzjdnTzs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699107171; x=1699711971;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=X+lczrgW3q14fJxqCxuguB46Xf0Pd0EcWmPDTji9zDY=;
        b=RftDqvq047CNIxPtt305OZEodJbLdMPUjgJ9OoYf5qIAHdx7gt6cLwFZiWRvdnqJ0P
         IaG4O9wRRiH0pl50sV+I7x189llxDYTFrai9zJ2c0oVoJwJCTMujK3NKTx9xBiyzgMlg
         6WhnSrNJc4BR54NP4UcKZSRR7uVZJBkGh2Ol0J+RpkBur9Ch74qogtbme6SYmjA+fVn0
         7U2LJdVU7HMwGuPi1vYxQ8o2ZRIc6qU53KZApqlukUTd1b9ChCIWbyIUmFIkMegS+3z1
         qpd8h8D+wHTuFnBImzPc/F0hXubH81sZgDyGxi2HEUTSZlLh9S12qfuaXCfAa79IzTFP
         ACfw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOJu0YwmFSaGa3tFP8mIZkmqRRN7mBgDSn9YhoAVjprAGv+2aXlwVa35
	MI0iO7p5r8GnbubfPVWAZuRDkA==
X-Google-Smtp-Source: AGHT+IHalDrd940Xe80c1keOsdamW0I8fGTgUlAF7q+2yB5JrSVF14FUtGgvTvbGT6xaltAwMWcPgg==
X-Received: by 2002:a05:651c:11cf:b0:2c6:eb25:75f4 with SMTP id z15-20020a05651c11cf00b002c6eb2575f4mr6354353ljo.6.1699107171444;
        Sat, 04 Nov 2023 07:12:51 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:600c:35cf:b0:407:7e4f:6f81 with SMTP id
 r15-20020a05600c35cf00b004077e4f6f81ls1346106wmq.0.-pod-prod-08-eu; Sat, 04
 Nov 2023 07:12:49 -0700 (PDT)
X-Received: by 2002:a05:600c:4707:b0:406:53f1:d629 with SMTP id v7-20020a05600c470700b0040653f1d629mr19642810wmo.5.1699107169444;
        Sat, 04 Nov 2023 07:12:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1699107169; cv=none;
        d=google.com; s=arc-20160816;
        b=vBegpkffn3WmTAhnKfyKoCcCqSn0xt15/c6Wo0Fgap4Pie/HBKyu8WeWseDmkKWae5
         JjJvTLDhlmFazr9GSxv77DtxSEZW5fOAZfrNlXwkJSA/LkzAB5EmPI0v4135hPLBtIrL
         L6fzedsLYabyW1Vc0nMe1PbSEeW2XA0mGZf2tLMc53hwFL8mrlMacnQUsC7BISs3H9L2
         +Ht6OZKkOhmAoQ/0xRCXtaHqyEC6PNeeaAKgC0S+4TUlgK87PJs4SONZj0Wh31lpUbQv
         pv6aH2/cZivHlt8Hi7wN/OkNJAfZdRI53Tw/kFj7XJCLs4xc+z6elyuTbGAYpLFyX+nH
         WHlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=6Zk0YJUtzFdXzNGH5pkcB539w/gPmLIpfdc6iwaS3R8=;
        fh=ldCGyavYp779X2ViOANHPzjiMm1aqt/1VlioTkK72aI=;
        b=zeIQYGxT+5M+FMCPMjkUGVYwRdvsAyyzFPa5cCP7YY0ShQ7hU2FKgiDT1XbFyLjQsN
         hcAUeJ84ZrhibjyVcT+eF+FlYvsl1Q288gj0KQonVtaxJHCE2QgqeTznLfzo6chbutFR
         LhjnpXRFNzIwRUXxUdetWW/QY2KiSx+oiseXohyxnV5cb1W8Xjx81xDQ0JbyR85ZL9yE
         bXWKqKuU8WB6HBcAeWLUPgt8uQ4xRs3SJiC29NUvxaQ36YcQHunLBSnuCuuQ0nJBnTUz
         y1i80KLGc2LHqmHMozXP5yO0qXLP7Zq61pTE8PnJF2qiuSNQFFHS/4pjCnBETGupXi9I
         /G1Q==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+6553b73e@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+6553b73e@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id n6-20020a5d5886000000b00317849b3de7si3145150wrf.195.2023.11.04.07.12.49
        for <usb-storage@lists.one-eyed-alien.net>;
        Sat, 04 Nov 2023 07:12:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+6553b73e@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 886183 invoked by uid 1000); 4 Nov 2023 10:12:48 -0400
Date: Sat, 4 Nov 2023 10:12:48 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Milan Broz <gmazyland@gmail.com>
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
  linux-scsi@vger.kernel.org, gregkh@linuxfoundation.org, oneukum@suse.com
Subject: [usb-storage] Re: [PATCH v5] usb-storage,uas: use host helper to
 generate driver info
Message-ID: <537f0db7-84b3-4f01-a4e5-49164878d7a9@rowland.harvard.edu>
References: <20231028174145.691523-1-gmazyland@gmail.com>
 <20231103201709.124372-1-gmazyland@gmail.com>
 <d26c884e-3505-436f-9a76-ec701fb5e2bb@rowland.harvard.edu>
 <b8fd6e0b-8164-4992-8124-135744430b9c@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <b8fd6e0b-8164-4992-8124-135744430b9c@gmail.com>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+6553b73e@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+6553b73e@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
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

On Sat, Nov 04, 2023 at 09:01:44AM +0100, Milan Broz wrote:
> Thanks.
> 
> Unfortunately, the build rules, I removed in this version, are needed, see
> https://lore.kernel.org/oe-kbuild-all/202311041507.AOYwj5tK-lkp@intel.com/

Bizarre.  I wonder why it worked on my system but not in the test build.  
Maybe because I wasn't starting from a clean slate but instead from one 
where old versions of the object files already existed.

> I'll keep fixed version in my branch on kernel.org for a day and once
> there are no such bot reports, new version v6 appears in the list.

Okay.

Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/537f0db7-84b3-4f01-a4e5-49164878d7a9%40rowland.harvard.edu.
