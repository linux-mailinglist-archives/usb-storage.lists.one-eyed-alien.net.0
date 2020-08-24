Return-Path: <usb-storage+bncBAABBCHGSD5AKGQESS4IEHY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc46.google.com (mail-oo1-xc46.google.com [IPv6:2607:f8b0:4864:20::c46])
	by mail.lfdr.de (Postfix) with ESMTPS id DA68F250AF4
	for <lists+usb-storage@lfdr.de>; Mon, 24 Aug 2020 23:37:13 +0200 (CEST)
Received: by mail-oo1-xc46.google.com with SMTP id d20sf6064811ooh.2
        for <lists+usb-storage@lfdr.de>; Mon, 24 Aug 2020 14:37:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598305033; cv=pass;
        d=google.com; s=arc-20160816;
        b=UQYvYPSwiYH8WnCWoJuK0Ee/2dlIw7uNnqFaSby7IpuC4oC+8QA3HHVTyiPoA3VJP8
         XbeA500WXqO9tGbVyNM7Ao4YBHgpE11x49M1wp4+6nArgUk4LRh3jeN5w2M4im6VSpGG
         qBPTlhWu15r0r2Fduj0WqINC+1I+Sy3OeGNo0rwcHIMyEt83Sfwo7MdEQg4TWPC2lYA5
         fZIFxN9J6CXt9F2eaiiVvIljT3IVx1/NynS1p4qaixABoFyQEFA1SnrrQAabSptTTApT
         DBNDNRpen6qRsPJunI8Gv+bu7Vcoo6DJ9R3Q1mli7Zx+kRroFs+Pqt52eOgWzIFHCbxk
         HQ7g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=S7YmBwUy/dJSeqL3Wyx4lzIXYLbFVPaDgp6iGLksD3A=;
        b=Ku47iQNZS1fJYl9LC8P6pQgC2HyzMCfJnr9bBQdEgnnlHZeH6rChXQFLJEAUCDWNCu
         DTSnYMJ26sSOuyTuFte3uzOwZtl6aTB5GVqCHMCcsQjtcyvZi9jTgdyy9zhyE66/hIIB
         dtkTldxeyweraCHhY4YVs/5U5jakjDJBtroDI16hES8986HPwyGG/0fBiteA/ekrSCTQ
         72cz6nGAc8DCjS1Aqpim52Wz3wVGic5hHTV59bm+vRn/v5T78N0HdQJUvhOfNvyjuqPr
         YF/kWlKVEoQtutFAP4NZbM8eOXNWyiqHnB35sRIinm2poeq74lZOEw6HeGfWPWrT1bra
         q3Mg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of swivel@shells.gnugeneration.com designates 66.240.222.126 as permitted sender) smtp.mailfrom=swivel@shells.gnugeneration.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=S7YmBwUy/dJSeqL3Wyx4lzIXYLbFVPaDgp6iGLksD3A=;
        b=VG+NnS5V5sTNa9DVgOZ9riqyPgy1AkfQ2pNriiJsJzmuvsXO0zLQBrpTnlRGZWyerS
         Lmw7DRRlK2yCkqoAxvlkwWE4RQUr8ZEYNZ37NtfqXlpGW6YyLNtYwSkRmhLjgD8DRgvl
         axB+TAQSZobwexfTP0OJAW8R9BNDqyt4x0gZo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=S7YmBwUy/dJSeqL3Wyx4lzIXYLbFVPaDgp6iGLksD3A=;
        b=iVl08NwddItz6Jtz5IDprkPYIbiiiqUUv1NwY82pAld64WDoY8IEiWBf/s4KW3Ik7K
         DUYdSSqTBvqhXt0pfz2Wsv3kAYJDsNeMBrEsbOmm61ZLfPBA1GXZNIBhRgGnxj9gQb2L
         7GEVFNaXY67DrKqm0liaN2FT5SBjo3e7DgHv69vaBRlLqi4Q52OHq1jZqAvOkSrJwjZK
         bYPeDncEdZWtvopiZZqancbcMH+nXkOQ4K1m1bgTJc2WsN96RWMH8RxPZ8VzMdtnjsiQ
         rsl9GLkZ5mRdTDBecyib0HVdIe19z2ONcWKeOunBzuSdwur1c3hIkUTMpKYbTVUVD0D1
         tMpg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM531T2le4HJ1ZzMHmabtLYSoZKMdHNJ4ux3ki6g2y12eZg8vyhj96
	BEDNyaw619yw+Z8dntSy13tyqg==
X-Google-Smtp-Source: ABdhPJwEFQbCxb270SmnvFr4bSBQISB8dytJSZqH36/EFCpvDCK0wbHKy6hrAmcm+mzbBccxwJFKyw==
X-Received: by 2002:aca:130e:: with SMTP id e14mr902159oii.99.1598305032694;
        Mon, 24 Aug 2020 14:37:12 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:aca:b541:: with SMTP id e62ls1007314oif.2.gmail; Mon, 24 Aug
 2020 14:37:12 -0700 (PDT)
X-Received: by 2002:aca:a9d0:: with SMTP id s199mr840782oie.154.1598305032378;
        Mon, 24 Aug 2020 14:37:12 -0700 (PDT)
Received: by 2002:aca:240d:0:b029:c2:846:c263 with SMTP id n13-20020aca240d0000b02900c20846c263msoic;
        Mon, 24 Aug 2020 14:18:40 -0700 (PDT)
X-Received: by 2002:a17:90b:17ca:: with SMTP id me10mr860294pjb.116.1598303920618;
        Mon, 24 Aug 2020 14:18:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598303920; cv=none;
        d=google.com; s=arc-20160816;
        b=Ntjr88oftEYY9lM3ot4aZZBrqLsx9wEKtdm5bhmfPitvy/07b9vf/M/DGmC8Z4hxrs
         P9n/fawS0TC6kJb+h0xa0ujKbxEF321js/vkGwSYxmyPhNUOUplVY3XvAvNmYAOvxG01
         otrfjKcg2L/vX+zz9f/FEx9jocURuouCi5+GE/gwCGXQyLAycgJKRPOdOn47FW0PVJIn
         N420HHtWbujY1xxkW1CaZpT0YeWlImwtzUeOvWEnzMkeLwkComFT8hJxLcYhGt19GfMV
         XY6qbySF6U5EMBaKHCF3gr0A03Vvozt7GrxXA1ShI4IPTzTo+QXukMwkPoT0ricvVEFu
         kbOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=38Y2Inb/IbZnfvYrhBDhlLyAHS2+wjW04o1UW2EqWrI=;
        b=uB2W1H9nLypLA4mzodtLT6DsqDfbgMYzsS8WLghcrlRBLcSlWj+Uat1l13rvaeXSAg
         7uvGQ87J3pGeIv9Fd5QcUusZoWmgpf4qtFq2f79H+WgVzYWjRybUZNPK9QGUqIxCp1+y
         dFNmTFG9xrfpTlbtZl0GwbmuJyyPeU80EiF/FOeEJx3CjQYSA2fb0qc9zt7cs7LHo2Qm
         7d27/TePOxASyI0QADjScYsebC6AGeloSQa1ZZcO5sAcTdWEt56woa+k/JnWn1mFdPeF
         Y2tEXNSft+/JLA5V4P3ahNKgiquGDt6EVmM1B+fQmCBsffA+kY90DQ2+ROw4xL9ntT56
         9Xzw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of swivel@shells.gnugeneration.com designates 66.240.222.126 as permitted sender) smtp.mailfrom=swivel@shells.gnugeneration.com
Received: from shells.gnugeneration.com (shells.gnugeneration.com. [66.240.222.126])
        by mx.google.com with ESMTP id h13si436964pjm.154.2020.08.24.14.18.40
        for <usb-storage@lists.one-eyed-alien.net>;
        Mon, 24 Aug 2020 14:18:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of swivel@shells.gnugeneration.com designates 66.240.222.126 as permitted sender) client-ip=66.240.222.126;
Received: by shells.gnugeneration.com (Postfix, from userid 1000)
	id D265F1A4018B; Mon, 24 Aug 2020 14:18:39 -0700 (PDT)
Date: Mon, 24 Aug 2020 14:18:39 -0700
From: Vito Caputo <vcaputo@pengaru.com>
To: trix@redhat.com
Cc: stern@rowland.harvard.edu, gregkh@linuxfoundation.org,
	linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org
Subject: [usb-storage] Re: [PATCH v2] usb: storage: initialize variable
Message-ID: <20200824211839.6c7m7yhgd7ffq3g3@shells.gnugeneration.com>
References: <20200824211027.11543-1-trix@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200824211027.11543-1-trix@redhat.com>
X-Original-Sender: vcaputo@pengaru.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of swivel@shells.gnugeneration.com designates 66.240.222.126 as
 permitted sender) smtp.mailfrom=swivel@shells.gnugeneration.com
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
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

On Mon, Aug 24, 2020 at 02:10:27PM -0700, trix@redhat.com wrote:
> From: Tom Rix <trix@redhat.com>
> 
> clang static analysis reports this representative problem
> 
> transport.c:495:15: warning: Assigned value is garbage or
>   undefined
>         length_left -= partial;
>                    ^  ~~~~~~~
> partial is set only when usb_stor_bulk_transfer_sglist()
> is successful.
> 
> So set partial on entry to 0.
> 
> Fixes: 1da177e4c3f4 ("Linux-2.6.12-rc2")
> Signed-off-by: Tom Rix <trix@redhat.com>
> ---
>  drivers/usb/storage/transport.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/usb/storage/transport.c b/drivers/usb/storage/transport.c
> index 238a8088e17f..044429717dcc 100644
> --- a/drivers/usb/storage/transport.c
> +++ b/drivers/usb/storage/transport.c
> @@ -414,6 +414,9 @@ static int usb_stor_bulk_transfer_sglist(struct us_data *us, unsigned int pipe,
>  {
>  	int result;
>  
> +	if (act_len)
> +		*act_len = 0;
> +
>  	/* don't submit s-g requests during abort processing */
>  	if (test_bit(US_FLIDX_ABORTING, &us->dflags))
>  		return USB_STOR_XFER_ERROR;

At a glance this seems odd to me.  If the caller insists on ignoring
the return value, shouldn't it just initialize partial to zero?

In my experience it's generally frowned upon for functions to store
results in error paths.

Regards,
Vito Caputo

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20200824211839.6c7m7yhgd7ffq3g3%40shells.gnugeneration.com.
