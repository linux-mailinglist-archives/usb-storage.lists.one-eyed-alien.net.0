Return-Path: <usb-storage+bncBD6LRVPZ6YGRBEV2SH5AKGQEVS6P65Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ot1-x348.google.com (mail-ot1-x348.google.com [IPv6:2607:f8b0:4864:20::348])
	by mail.lfdr.de (Postfix) with ESMTPS id 92EC1250DB8
	for <lists+usb-storage@lfdr.de>; Tue, 25 Aug 2020 02:36:36 +0200 (CEST)
Received: by mail-ot1-x348.google.com with SMTP id w15sf1631968oti.5
        for <lists+usb-storage@lfdr.de>; Mon, 24 Aug 2020 17:36:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598315795; cv=pass;
        d=google.com; s=arc-20160816;
        b=09iJXP4op2mwNYHdGB/dhsqKGSIz47frEBRq0yzuVz5JucNiErQB958ql4NOyDYMaC
         6SFCQ0PGir0R/hiFMZIOrHE5azNwbXeZgjvzdqSuf8tseHQCKx6bFQsby0DjtBVrLyFQ
         5YG+weSXJFZATVkk3i/gX0PF3mAr9RIU62U9hUKwNo84UjIS7tOyM9YsvM5mfwgyBsRe
         TSx6LpyjC0WoaxlChWLXB96P5d+owa9CAzeTb5zNdyVvjaimUcu839eiVUOc0OHsavGE
         QBwpatEVYgiqEu8MlNfU+2NxQSGIe3CA9S3i6j6lv4xyhLbpvt0sQrbhi3HD7tqgYhhG
         DYgg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=31RkGaa7sVjkXLv4PmRjbR73dw2TH5xp0iBcpiryf8E=;
        b=eJLQQ2BQqExPoW6hRvFtisi9P/LkCQQLqvIvUngI0kBnPIWsNqsG0Tx8rC6KhBeeP+
         Ss6Th5VA6FgwKByE5FoXOrfAejM7pFWmEwPG6DD9S+AxhagusRR3V0Xbtv3BnOOc7qsE
         gOpfIpW850l181tFfsfylh6tqJoDOr7prGybFYAFtYVYLEIdVs2UvI8hqVwjNToZICC7
         qLreZpeUQstJUpyTzhD2lN/8S+MFaznDJFppkDUEdiFFkewwM67oxMOsPYofQuISKiqJ
         6T4d1TLVUmDWTu5eLauiioH9dA/pppjtYjimf8XIVkzsS48H+pr3aXo44KJJ+rptnbew
         gevQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+5f4942ce@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+5f4942ce@netrider.rowland.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=31RkGaa7sVjkXLv4PmRjbR73dw2TH5xp0iBcpiryf8E=;
        b=Q71B1jlv5OvWEmx0cqH92/0zeZADAc3UPj3G0QsI6XMQ/VhlmOH/8R+Y+cqD7ONHOa
         8eb9yCr/jQVh/Z7MBWBq9iUydQO0+h3Zi4RAFadf2JQqvxvYkAeLrtuxRkT3s3YSxuJq
         GdW7fCeOV8hkQfb+njDIjI5HFQh/P2TYg9+Ek=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=31RkGaa7sVjkXLv4PmRjbR73dw2TH5xp0iBcpiryf8E=;
        b=KpSbIWE9+yTOZufx4B8DYkplNhME8ncQtXOsA8wYQBweyxCNjvbQmNs/XiCiJvewO8
         /syfNnoABMBJS4ZtYOCIDq7kAz7zs/5b92HlW4WfJwBBlh4EkGZkQ8AS+rM+SCsehQ7q
         R6q27rq5ArIWCoi70jxJ8A6/8MDIlP3MncDvepcVNQB+/vs+QHB5G6kMrAqdJv6bMW1y
         BPIQioPkDqhWI1VHPZhyj+i/E4IOLONOz+4aFPfOs98fcd337LYdazYBFe17h2TMpRgs
         wMYuwGKpY5M8EqITazP9V6yWRO/M88TjxWAeanL3L0twAdSRSZQV7HBH0M7iOILXNW8S
         PsbQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM532bzA2gjR7BrC8D+64FjQMUx8NTKmCAXtjXi8ivlX9xCrcPK0EZ
	Pi6mpTqxamM0tNZExD/Ej3t4ag==
X-Google-Smtp-Source: ABdhPJz+nnFHn3+tJhmgkYL5O3hxPISF9icaGt5QoZvEYIojA9BkzVf283CAVLQFurcM5WUyiRoKZQ==
X-Received: by 2002:a4a:af0c:: with SMTP id w12mr5415515oon.68.1598315794934;
        Mon, 24 Aug 2020 17:36:34 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a9d:4a97:: with SMTP id i23ls2521345otf.7.gmail; Mon, 24 Aug
 2020 17:36:34 -0700 (PDT)
X-Received: by 2002:a9d:7192:: with SMTP id o18mr5378671otj.277.1598315794459;
        Mon, 24 Aug 2020 17:36:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598315794; cv=none;
        d=google.com; s=arc-20160816;
        b=I67JS4JtLCObkZk0731i9RdxmFBJiVi6LtgXeQ2A09UmNLHqB2U+1dwYHX/k3XtwZb
         YKCc/9qdQBuariflQlFVvgYoq1D0zsv5u2SWlBa09VNvWT6LpPLSzCXlW4RQIAFtBGrz
         utQOoVDS3FCovNnHsUlBlYGqhK/mU8oR98f/nDxKwYEh4LLPUl2GJtuouBDMZc+Xi3Lv
         DCke93qkGEyrqbICtSVzJAkapAwR1trqQzQcxTSVrjNqshk1i6O2YyXO/TFv3hu7hObd
         ofOTKc7YPJ6lN8cqCGx73SH4MtZsYvWsqPrHfncb3FtBmbG2Bc70VywyokZwOthOZhdv
         YrMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=WstHR0OC1Mh1zXGfH6fRbglgDUSK6THRG2C51S5zrjM=;
        b=ibkRybzfAG2eUi50BdocM3KI/4SARZ8Mvf+IKTmMZ016U6Y4UfnN5ifbNrQRFp3ept
         UzkSCeLuOpXFeLOlFWOkW7PQ+jPMS/8hWOO/HfRBMZ2VzC2v44zJTFYZDJ5RjmsHqXIr
         NU7pOppdSuF0ZzpLeHu9W41UctoEJn7Hpwighv7wKpbRC8JU90ZBnjQdb8e14iEV6G2g
         UuMQqgGJi1QqcCHFptUpDKlLOwxNjpCmRCYfVLFvIf8pQNmWwLPACTiNiB6Z/XujqihQ
         mKgS6d9qqIU2utrVzU3OiwRMmxgPorO2cI9Dk6krGO4VMN8BniLbbCXoJW9mHJwic2VY
         DCkA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+5f4942ce@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+5f4942ce@netrider.rowland.org
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id d69si6208875oig.14.2020.08.24.17.36.34
        for <usb-storage@lists.one-eyed-alien.net>;
        Mon, 24 Aug 2020 17:36:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+5f4942ce@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 350852 invoked by uid 1000); 24 Aug 2020 20:36:33 -0400
Date: Mon, 24 Aug 2020 20:36:33 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Tom Rix <trix@redhat.com>
Cc: Vito Caputo <vcaputo@pengaru.com>, gregkh@linuxfoundation.org,
  linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
  linux-kernel@vger.kernel.org
Subject: [usb-storage] Re: [PATCH v2] usb: storage: initialize variable
Message-ID: <20200825003633.GB350601@rowland.harvard.edu>
References: <20200824211027.11543-1-trix@redhat.com>
 <20200824211839.6c7m7yhgd7ffq3g3@shells.gnugeneration.com>
 <c9c4fca2-d04a-1bf9-e90e-9476392c1662@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <c9c4fca2-d04a-1bf9-e90e-9476392c1662@redhat.com>
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

On Mon, Aug 24, 2020 at 02:31:01PM -0700, Tom Rix wrote:
> 
> On 8/24/20 2:18 PM, Vito Caputo wrote:
> > On Mon, Aug 24, 2020 at 02:10:27PM -0700, trix@redhat.com wrote:
> >> From: Tom Rix <trix@redhat.com>
> >>
> >> clang static analysis reports this representative problem
> >>
> >> transport.c:495:15: warning: Assigned value is garbage or
> >>   undefined
> >>         length_left -= partial;
> >>                    ^  ~~~~~~~
> >> partial is set only when usb_stor_bulk_transfer_sglist()
> >> is successful.
> >>
> >> So set partial on entry to 0.
> >>
> >> Fixes: 1da177e4c3f4 ("Linux-2.6.12-rc2")
> >> Signed-off-by: Tom Rix <trix@redhat.com>
> >> ---
> >>  drivers/usb/storage/transport.c | 3 +++
> >>  1 file changed, 3 insertions(+)
> >>
> >> diff --git a/drivers/usb/storage/transport.c b/drivers/usb/storage/transport.c
> >> index 238a8088e17f..044429717dcc 100644
> >> --- a/drivers/usb/storage/transport.c
> >> +++ b/drivers/usb/storage/transport.c
> >> @@ -414,6 +414,9 @@ static int usb_stor_bulk_transfer_sglist(struct us_data *us, unsigned int pipe,
> >>  {
> >>  	int result;
> >>  
> >> +	if (act_len)
> >> +		*act_len = 0;
> >> +
> >>  	/* don't submit s-g requests during abort processing */
> >>  	if (test_bit(US_FLIDX_ABORTING, &us->dflags))
> >>  		return USB_STOR_XFER_ERROR;
> > At a glance this seems odd to me.  If the caller insists on ignoring
> > the return value, shouldn't it just initialize partial to zero?
> >
> > In my experience it's generally frowned upon for functions to store
> > results in error paths.
> 
> Then maybe v1 is more appropriate.
> 
> Else i can spin a v3.
> 
> My preference is v1 as it doesn't add any runtime if-checks.

If you really want to get rid of the runtime check (both the one you 
added and the one already present), you can audit all the callers of 
this routine to make certain that none of them pass a NULL pointer for 
act_len.

Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20200825003633.GB350601%40rowland.harvard.edu.
