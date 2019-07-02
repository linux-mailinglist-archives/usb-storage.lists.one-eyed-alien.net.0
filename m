Return-Path: <usb-storage+bncBCWLFYFHWUPBBB6D57UAKGQENHY2BSQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x446.google.com (mail-pf1-x446.google.com [IPv6:2607:f8b0:4864:20::446])
	by mail.lfdr.de (Postfix) with ESMTPS id 721905D840
	for <lists+usb-storage@lfdr.de>; Wed,  3 Jul 2019 00:58:17 +0200 (CEST)
Received: by mail-pf1-x446.google.com with SMTP id z1sf187302pfb.7
        for <lists+usb-storage@lfdr.de>; Tue, 02 Jul 2019 15:58:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1562108295; cv=pass;
        d=google.com; s=arc-20160816;
        b=ohQRqwpWZyGgp0NbSzBD7s/GWPHgyUR6HAVwWfIYyrTW1N0fOFaJ+umE97wIceO7Gv
         8Z1YDb56mbK3FyAg1UOVq44bysExSWUD9A/DGwkI+AvbgseK/6QYuxwHQ8GZP7kSRaki
         flTS+NLQGfo4qMlab89AKPXC7BxOC+rZw6rNBLtWzd1du5+IXxHDAviU6Ah1m+2bBKSn
         80WR2UkwoKMaYFJ7n7wIeTk6ZMRhJKFX/GEMNo6htcIk2nSIlYjxwujUxFyk7Fr86EaD
         eIjI5ChyTd7xLGmWCUhllPIMijyfzHON3jKCodDWO4Zc4+W1ZDLO/fx6phNsUxe97Ekb
         TEQg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=d/1YDtWahPX8bzHRiUyl9XZb2Ci0tJkfJIsLWuoVK4s=;
        b=dh7m+BgEf9v9Z53ehpejgyjW5lFXxCxf7VrRjAXJgXe50mRaovqMWPCyE0xpfdUZq/
         eU4wqg9nDSry05bh+vp4uNG4xi5Ebwn+6oDiHj9OcHS7vwRDMRiC2GKUgEOAskR4XbEV
         W6eorE4SlEVFC/lRxBUOrL+FWVkvq+SH8NyZ+JbfFJiC6koDx7T7o6izuwjuOl5F55p6
         jZMLaA13RYIT09hDMG5MFzXXfYUBwd4FcK0g8CS43qQT6InPHYZa0JGNooK8KJEIfKuS
         6b0cZ3Td2Q1Bun5pSU3IP3UTjAZynfAYxUkZNDsI6sJXid9nvQCW5FWz5DPAhrgw5Hdr
         7UKQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BpurX42x;
       spf=pass (google.com: domain of marcos.souza.org@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=marcos.souza.org@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=d/1YDtWahPX8bzHRiUyl9XZb2Ci0tJkfJIsLWuoVK4s=;
        b=ERKHXA5Hffr4YENTkpKDdSQubzeqf76Ut2zXfkuD4zRr/Q2yFGRGfOPeFB9PnnlfcV
         0DKaSBsmyvICTgN/Kg7a2TATT+2Ds7ePORAfrkdTc96L7cAlir9FrhEwBLUjZa21dXQz
         kYV7rLQlYsnITF9yGdUE8ICu6O5wXptgiGyII=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=d/1YDtWahPX8bzHRiUyl9XZb2Ci0tJkfJIsLWuoVK4s=;
        b=FyA34Z4fFkczmrEjAKkHQoNSGcmUBiBEqecwSAXMtfQ+aEs5jPvORQlEV1XZ9Wxqpy
         vVYXzfJiI09QrJTHvJCWrEAbAk3UmHCW2O39AEKHfcf/OTNNmmu/+7LoGIzpYn+PM+zU
         aSJhiryvsO1uLoFp5lFaSH9aDeOfwXwB+rZeoTu5UJ4bm6U6qU7Y3OTMToR9C3PX5itU
         GitMwYc/gj5ZfWP7xnOSkxrviiyiVJDN5tqC4ZVbczzxq7FH+92lDT3D5hYQ8XBx8Bnm
         1M3/UhggqRd/Zz64g2UDglwausq/ftqNlbIa+InWkzLYvQO1JlCad3b5bgPh4cPknNq3
         zvlA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAWrElpvgZJjwHXBTOcjlr25r1X+UuMsin95uxDMf7WP6dpIqqff
	AbH9lrRMX62U9iq/QftYFMk=
X-Google-Smtp-Source: APXvYqxdsxYW/WDfo6AzOa9B2psaauj11+hWML5Ufdxxc5pobqd6HWyWiAygi30UCwDwGNbEW9F6Yg==
X-Received: by 2002:a17:90a:cf0d:: with SMTP id h13mr8326190pju.63.1562108295715;
        Tue, 02 Jul 2019 15:58:15 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:902:f081:: with SMTP id go1ls51762plb.3.gmail; Tue, 02
 Jul 2019 15:58:15 -0700 (PDT)
X-Received: by 2002:a17:902:4222:: with SMTP id g31mr39430974pld.41.1562108295086;
        Tue, 02 Jul 2019 15:58:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1562108295; cv=none;
        d=google.com; s=arc-20160816;
        b=Egk6txqxkqPYZwjX9+iT1ziXi0wtoL7CQdrfM3DU9PqZQ1ErqYdYUiEQXdU/qrJseX
         aYISmjsis6hEERCduYmIyCx3egXmmGE+jSb3GxSrFaRRsjXorxXAwG8EJTTRhss51nM7
         iMou591PBHJXKYpnWft4ezsgiqUqpyS+14lVHft6JfYdc0qpkkL1g7ohQnRA8bIys+l5
         1mjRkdoa/goBOm8uLJpIBafkqmYYzhwwdHbbgbMaY817mEVXQ2+0UcHaLX3fMpiBPb1r
         F2URs++LdLPzhzHvbzzicDVcJGr4jjty8Hc5EAleAdR8SVu/JiMyc9wq5tZ/BWSzb8vB
         vH1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=EEyrpPr6crLLek2K+2wB7hfBX7/xhxYts0mMWfA15n0=;
        b=hdM7liCRO+CTTyvRz3JSlrVm6mP483bwvj2gAOMmCViU1LbPJCyK40y4eHvIwQXhXr
         Ws04GgznaIFsMetggBvKUVlH14tokzKDN22piympD6++B1x25/fgiqRFZYzA0XSyayIY
         2+2iAE93GbKKFBhG1+73gH6yECLKnqPNmOEGuY/wop+9hhZ8a19SbYSLWsKt5gPX7jHz
         zp/0h7WsXss4C1/urEbuWeOx/dItN5kOBD7YKTG+QMoVasE5tAkVaA2HQhDZMDmb/IJO
         yaEyCceMs1pWCr0YmCPcCrsEBkKY6OmFYkUpaCKV51i3HMiWd/MrMzEP9EeAQEakZD+f
         a3ig==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BpurX42x;
       spf=pass (google.com: domain of marcos.souza.org@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=marcos.souza.org@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id e8sor566958plb.48.2019.07.02.15.58.15
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Tue, 02 Jul 2019 15:58:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of marcos.souza.org@gmail.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:a17:902:b713:: with SMTP id d19mr18675828pls.267.1562108294798;
        Tue, 02 Jul 2019 15:58:14 -0700 (PDT)
Received: from continental ([189.58.144.164])
        by smtp.gmail.com with ESMTPSA id b24sm125821pfd.98.2019.07.02.15.58.10
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Tue, 02 Jul 2019 15:58:13 -0700 (PDT)
Date: Tue, 2 Jul 2019 19:58:57 -0300
From: Marcos Paulo de Souza <marcos.souza.org@gmail.com>
To: linux-kernel@vger.kernel.org
Cc: Alan Stern <stern@rowland.harvard.edu>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"open list:USB MASS STORAGE DRIVER" <linux-usb@vger.kernel.org>,
	"open list:USB MASS STORAGE DRIVER" <usb-storage@lists.one-eyed-alien.net>
Subject: [usb-storage] Re: [PATCH v2] usb: storage: scsiglue: Do not skip VPD
 if try_vpd_pages is set
Message-ID: <20190702225857.GA19791@continental>
References: <20190618224454.16595-1-marcos.souza.org@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190618224454.16595-1-marcos.souza.org@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Original-Sender: marcos.souza.org@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=BpurX42x;       spf=pass
 (google.com: domain of marcos.souza.org@gmail.com designates 209.85.220.65 as
 permitted sender) smtp.mailfrom=marcos.souza.org@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

ping?

On Tue, Jun 18, 2019 at 07:44:54PM -0300, Marcos Paulo de Souza wrote:
> If BLIST_TRY_VPD_PAGES is set for a device, even for an USB, it should
> be honored, so only set skip_vpd_pages is try_vpd_pages is not set.
> 
> Signed-off-by: Marcos Paulo de Souza <marcos.souza.org@gmail.com>
> Acked-by: Alan Stern <stern@rowland.harvard.edu>
> ---
> 
>  Changes from v1:
>  changed the check of try_vpd_pages from:
>  	sdev->try_vpd_pages == 0;
>  to:
>  	!sdev->try_vpd_pages;
>  (as suggested by Alan Stern)
> 
>  drivers/usb/storage/scsiglue.c | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/usb/storage/scsiglue.c b/drivers/usb/storage/scsiglue.c
> index 59190d88fa9f..30790240aec6 100644
> --- a/drivers/usb/storage/scsiglue.c
> +++ b/drivers/usb/storage/scsiglue.c
> @@ -195,8 +195,11 @@ static int slave_configure(struct scsi_device *sdev)
>  		 */
>  		sdev->skip_ms_page_8 = 1;
>  
> -		/* Some devices don't handle VPD pages correctly */
> -		sdev->skip_vpd_pages = 1;
> +		/*
> +		 * Some devices don't handle VPD pages correctly, so skip vpd
> +		 * pages if not forced by SCSI layer.
> +		 */
> +		sdev->skip_vpd_pages = !sdev->try_vpd_pages;
>  
>  		/* Do not attempt to use REPORT SUPPORTED OPERATION CODES */
>  		sdev->no_report_opcodes = 1;
> -- 
> 2.21.0
> 

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190702225857.GA19791%40continental.
