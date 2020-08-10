Return-Path: <usb-storage+bncBDY3NC743AGBBZEAY34QKGQENHO4VKI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-io1-xd47.google.com (mail-io1-xd47.google.com [IPv6:2607:f8b0:4864:20::d47])
	by mail.lfdr.de (Postfix) with ESMTPS id D82D3240BB7
	for <lists+usb-storage@lfdr.de>; Mon, 10 Aug 2020 19:14:13 +0200 (CEST)
Received: by mail-io1-xd47.google.com with SMTP id k10sf7577917iow.15
        for <lists+usb-storage@lfdr.de>; Mon, 10 Aug 2020 10:14:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597079653; cv=pass;
        d=google.com; s=arc-20160816;
        b=f0V8RHc8PzDOX6JMuO2mOZHQl3v15+XePzFv7qlTW3GlFXG0AdOyCRKEtYjF/SJKSC
         VAymkVR3/a5XcarnHJOLC6MB9Dnr2Ezcn2MYjHiiXAv2s9uv62JDlYWbDGvFssukNAJu
         48fCkj2uJmsgaHtlP9INoxvRHBJ0//7mlWFdnrZy7lxcUo+yys3WOSQwQdtCkiuEuIvf
         mBXyg9f4+072oQ/nfSCOi+qTV0sDVHtYD2MfxPVeKB/NFnxb1O8lzwyXpkzz+esMUp+b
         Lwd5x8tDxH1rb8SS+MykV0XGjoYAJJsj8vCPPBC8o5G/xHntyLcGpxKUf4qfNR8bzYL/
         WC8g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=EnlN1zdr9nVIRXaBLrT6eLyQK6OIXH7fC5pe2OpOe4w=;
        b=a/nyHOMVn0h75l4Br9NfmO+si3CUHxHh54tuYITqbZoglM3DOPtmKTXzHN2nQLL1Lr
         wpm1bzby7iSxx0ouvLHJikelyPzX22cfJMVT6/+sleGpb/z7fUMxCzrAM5iNxL8v/aD0
         HQrrlCFrRfVw36BuXoOHvJ+9PjVJgdC+iMI0nQdJCc6a4tG0qL4xkG5Pc8BSFiS5TrJs
         uU8OO4fHc2xg5PG3CEQBLONkLusSFwRJ8+oLi/Qb141qrXtYWNMFe5K/3oHigxVN1G3Q
         6/XtwJshfA73mSk7HarN4vpCtDfueYg22lo6ZxDgpTCXYAyTP6beXPCqwOdPC2SRlNyK
         5cMQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=neutral (google.com: 216.40.44.157 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=EnlN1zdr9nVIRXaBLrT6eLyQK6OIXH7fC5pe2OpOe4w=;
        b=EWwDfidkwwY1u3pdQHdnu01NfbXXEwV53kJZpWMFpbsCWutSOspIFK+SRMMS6Y30r6
         yJ34PS7n0cxeymrp18P2FkbIlyaWjiXKzgx39gbE4oRm0Bjo7HjL1KhGN8bmj3ejT7DO
         GzTpvlntV1juZkZBDAvR6qapgnBu/vAbwfy74=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EnlN1zdr9nVIRXaBLrT6eLyQK6OIXH7fC5pe2OpOe4w=;
        b=G2xUPpDDTH5nsr+dLLe0Ng96PJYf/ARiXUOWYQ/TI4PjsyYFr5H6vOPzcn5Rg0V2Cq
         piBJF6s+KsWh+TGCJBW4xtQXcKAJTzdV52MLBgQRuV4GojkAEfvhtWinC7Hrj3wfL3m0
         lxEhYarmT30kmT1ZVaYPLKXlYMlvrpTJAXQyRu0AiJtNidae5ts7eLS+84TNW+v9SsmZ
         epIMrizw7dBqIwnONTp97ec8azNff5hg5dBJs6sjLkBSL4I3w5BHHJYWJJqUr0NNtNR9
         bRLGkncYkmoyei9PJTrF19pLllRpqPaTeeWPMGmXwFdj1TI+wU+0RzB7c0oRVfrg8r8i
         6yJw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM533rq3O5+ZZq9AOOCaQDnPr7zpfsIEJIRZlZLgt/gnUQg7iGJaBQ
	FNrwCon5iB0MTjiFLmQqAomRzg==
X-Google-Smtp-Source: ABdhPJyjJhHemoodJ+ZJ1kOPGh2p/D6wYmgVMd2QvQutu+wYNT7rOTqYRQm3D28JlEpVFq/NQj4gbw==
X-Received: by 2002:a92:9183:: with SMTP id e3mr18960594ill.115.1597079652786;
        Mon, 10 Aug 2020 10:14:12 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6e02:1310:: with SMTP id g16ls4354540ilr.4.gmail; Mon,
 10 Aug 2020 10:14:12 -0700 (PDT)
X-Received: by 2002:a92:b106:: with SMTP id t6mr8960828ilh.122.1597079652059;
        Mon, 10 Aug 2020 10:14:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597079652; cv=none;
        d=google.com; s=arc-20160816;
        b=h16JRKX1s+DlQ98nKlmfDbvULGASkIBiKUEOeGETPFde0boDIKl8mVg0Xd5aIEL7R6
         fsVLxZNHi0FnODPAqO+yVYV1nk5l++JQ3NwBmkZ8ENbAvZrIWxcuaAQgDtCaA+2Ohzdv
         VnIYbHy09X5j8XuaV6302MMLhXu5ul6Y8ID0Q5apEdngafAVPIOzvuThtWUz0fzdc+79
         i/mkAMu74cssF5+BC3poGKEIEqul3lal3zG0jyW2pTp9IGutVBdmUxJ/xo1HJREVpB/r
         imuGzqJwz8i212wpx9yl49vHtogj8tCPiT9vDF0abv5UpAbnfzWrSz0HzJu17Zn2lme0
         InCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=Mc6v2nUptL4HkhMtNDXcjDmLLQVPm6ZkZz9ozSLKlDU=;
        b=bNGbyn//AHhfvNespqsygE3MBHzoqLkqQwEJdasFqbWa2ghw9iLb70Gq4Px8IR4XrL
         SjcwWi3JHZLIcugvEpkM1TVoB7LR30Jh7Xh+NymDOFSck2/fwx3TQyflvQswYTqZmo/9
         WrLc0DNUj6SPsyNYSzOleCeh1MNWsQhcdfOoLojt5YibPZnDte5B8WGHwt1+UsOjc41E
         B+OrWmelXV7zolFHK8n4q1XRJJSnDVyP6p0eGFXyMk0Im0r+HCqF4eJQ0e920kQ+DICP
         +o6Pw9jqKfHL6sG+m/zHYjiB+cvOTmEfHoWnQHOr2KSBNmqH8LILtl5rx2VroVOyHb/c
         BUzA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=neutral (google.com: 216.40.44.157 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0157.hostedemail.com. [216.40.44.157])
        by mx.google.com with ESMTPS id d9si15721377iok.64.2020.08.10.10.14.11
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Aug 2020 10:14:11 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.157 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.157;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay04.hostedemail.com (Postfix) with ESMTP id 720C2180A68C0;
	Mon, 10 Aug 2020 17:14:11 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:800:960:968:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1540:1593:1594:1711:1730:1747:1777:1792:2393:2553:2559:2562:2828:3138:3139:3140:3141:3142:3352:3622:3870:3871:3872:3876:4321:5007:7576:8957:10004:10400:10848:11026:11232:11473:11658:11914:12043:12296:12297:12438:12740:12760:12895:13069:13095:13255:13311:13357:13439:14181:14659:14664:14721:21080:21433:21627:30054:30070:30090:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:7,LUA_SUMMARY:none
X-HE-Tag: pull72_170428b26fdb
X-Filterd-Recvd-Size: 1971
Received: from XPS-9350 (unknown [172.58.78.167])
	(Authenticated sender: joe@perches.com)
	by omf14.hostedemail.com (Postfix) with ESMTPA;
	Mon, 10 Aug 2020 17:14:09 +0000 (UTC)
Message-ID: <ca88752c86bf8a42f9aa56b69df585542ea26622.camel@perches.com>
Subject: [usb-storage] Re: [PATCH] USB: storage: isd200: fix spelling mistake
 "removeable" -> "removable"
From: Joe Perches <joe@perches.com>
To: Alan Stern <stern@rowland.harvard.edu>, Colin King
	 <colin.king@canonical.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net, 
	kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Mon, 10 Aug 2020 10:14:06 -0700
In-Reply-To: <20200810142547.GC299045@rowland.harvard.edu>
References: <20200810083211.48282-1-colin.king@canonical.com>
	 <20200810142547.GC299045@rowland.harvard.edu>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.3-0ubuntu1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: mx.google.com;       spf=neutral
 (google.com: 216.40.44.157 is neither permitted nor denied by best guess
 record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
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

On Mon, 2020-08-10 at 10:25 -0400, Alan Stern wrote:
> On Mon, Aug 10, 2020 at 09:32:11AM +0100, Colin King wrote:
> > From: Colin Ian King <colin.king@canonical.com>
> > 
> > There is a spelling mistake in a usb_stor_dbg debug message. Fix it.

This is an alternate spelling in a few dictionaries.
Is this an acceptable Briticism?
If so, I suggest no change.

> > diff --git a/drivers/usb/storage/isd200.c b/drivers/usb/storage/isd200.c
[]
> > @@ -1383,7 +1383,7 @@ static int isd200_scsi_to_ata(struct scsi_cmnd *srb, struct us_data *us,
> >  				ATA_CMD_MEDIA_LOCK : ATA_CMD_MEDIA_UNLOCK;
> >  			isd200_srb_set_bufflen(srb, 0);
> >  		} else {
> > -			usb_stor_dbg(us, "   Not removeable media, just report okay\n");
> > +			usb_stor_dbg(us, "   Not removable media, just report okay\n");
> >  			srb->result = SAM_STAT_GOOD;
> >  			sendToTransport = 0;
> >  		}
> > -- 
> 
> Acked-by: Alan Stern <stern@rowland.harvard.edu>

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/ca88752c86bf8a42f9aa56b69df585542ea26622.camel%40perches.com.
