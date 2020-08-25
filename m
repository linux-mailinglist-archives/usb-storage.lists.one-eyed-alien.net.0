Return-Path: <usb-storage+bncBD6LRVPZ6YGRBNVZSH5AKGQE3LTBHMQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-io1-xd46.google.com (mail-io1-xd46.google.com [IPv6:2607:f8b0:4864:20::d46])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EB45250DB1
	for <lists+usb-storage@lfdr.de>; Tue, 25 Aug 2020 02:35:04 +0200 (CEST)
Received: by mail-io1-xd46.google.com with SMTP id k10sf7425374ioh.22
        for <lists+usb-storage@lfdr.de>; Mon, 24 Aug 2020 17:35:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598315703; cv=pass;
        d=google.com; s=arc-20160816;
        b=wlNsFsQBi8sQSaEQ+TgWjb5YsPODn22dyD98gBTdPTaVlVCz0yzvlXLEsOxsVg304Z
         A5cbgVl24CwO2Onk5H+wqWDEeXWT/TyLc68EScnMK1F9O9Oged1DoD+I9DaIEmXX0+EH
         2UJPI8/d9wMb+P3LM+8zWEXlQ33eFB/OURUVTgHLAfZ2ByC0OYjgirRjTQuv3uvDVbkx
         Z2yyIlWzwr758sB+gdQYd81al5mBKIDeMQfLsM0JV0h3TtJRtquxTnTOXQdPRCr7Jwep
         iyKzq8yRINZ5cmvigOqaTNsUCDOeqiSltNgzgaW1nuow3DgyJ01zdKiydXqmJPQoBM7I
         RCPA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=7isYqFBhxi8Sk0Rnipzpf4PCak9Ok+QaZV5AdnQAvCU=;
        b=oHcObYWcQKHox1tva9uTPv1vIvvu3zIO09PEXzCbJQU6eQCnsniOKeydjIo1TAfhay
         +kBBNveLjQyJUtTYRAWgKg9ZcSGNeWhdme5eXGKwvXIvGZ0KXXHpEB08P7RrxnUhgWp4
         5aEIVe8sEefpE6E7GI9+BqhkI+qFF2YNbGL8x5GxXSo5FARKQjJJYBwN6+xI5xUFnN8B
         rTcahlzD7r/msQCVOYyYYkzPU4ag1ozSPKhhpMcpzOSZY0qIOcX6aR4VFk7TQB1pz3ba
         W4ve0qF5Qn9ZbBBlJitTI1QaiStqlz1dhYar/4uHbh6WW9Qh7YgC7Z+E4x1iQiCp1Oph
         Cmqg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+5f4942ce@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+5f4942ce@netrider.rowland.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7isYqFBhxi8Sk0Rnipzpf4PCak9Ok+QaZV5AdnQAvCU=;
        b=cP0a9ejHQ+RaPJhrNrNk9EW609ZbBEMjSfMPWqEhu+Y8wRgkjXA+ynID5G31xa5NjX
         r8SW6CdcSrLTYgS1ztNevHbMVZE7BmOlV1uHscFOgRs4kYKqMsLDdio16LJrR9KN/D+0
         V15G/hY8czxcX8/wrVdpZ3jCvhED7bst3wMu0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=7isYqFBhxi8Sk0Rnipzpf4PCak9Ok+QaZV5AdnQAvCU=;
        b=SjF6NItEmJl+4n8iEavjdjsVzYip59qEPnHhfXGpWkAXih/G3F1dSC9wsLTeGjPKYI
         ylWaoOOHQqlGuDKOW+72BftGZ+HtYDmvqM3kk6pl9M0l6DqsflHHSh692Q4SmpeQMUtb
         w5VBPH7DTgkMKar6w2sp6t+C1oEfq6q/Sk/kAEvF6fAKY8U10M+FGoLjNqPkfeqjM+P5
         JT5rMHX4oFpeqqg/OQMou2dQ+4Zd5P9OzxUhfYphJFQ5Em6W3mu2keNYL/vCKCkljVij
         8+TVfIlMIPhqQCzD+Iq4wquyHOOs5+yCVPK+G4Ykk170Bq+dC4dShLoXwYEhoZvksLCX
         2Jwg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM533Xfo1hbPk+E+Grr/1G0Qh6Qf4asWELDiDzGGgTsVcYwyST21W7
	6c4ZWj90CDYQQ90fNxzVUWE5Sg==
X-Google-Smtp-Source: ABdhPJzPZf9eeB3NGpV/0iY3l14dxg5jW1vdGsdnUsdVLMYjbD1GB9AWos0rzRNpJbaf8quYQMsbqQ==
X-Received: by 2002:a6b:ba06:: with SMTP id k6mr6994848iof.101.1598315703122;
        Mon, 24 Aug 2020 17:35:03 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a02:7807:: with SMTP id p7ls697200jac.3.gmail; Mon, 24 Aug
 2020 17:35:02 -0700 (PDT)
X-Received: by 2002:a05:6638:bd1:: with SMTP id g17mr8177027jad.132.1598315702555;
        Mon, 24 Aug 2020 17:35:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598315702; cv=none;
        d=google.com; s=arc-20160816;
        b=I8W3CSx1160G9qk80l+79bnOHk7RnDfCMd7wUt1Zsrm49GWlO9woH3gOFmGGh0n0Ua
         Ss5z60RYQhSC07vPXxLIrYB+NOJVc1PXS9hIIkM6pr6IcOkIEyi3LbYSu3WyQspT6IKE
         jrbeg0MrYTGu90SYZ3szffMD/0vRl4d6iFdWBFiWNMB0SG9bvHdKWxIWf58A4Vj0D6b8
         DrYqIY2XJ9E2OQvprWl3Qsgv6+D2NMviMFQnl1xgXeBFn8rr7B3cB1hkq7ADwZUpHbti
         bdAuk0kbglltuv0rPxkrvIni/c+GSa/P/rCB+q01X6seJwmFUvbucL1wrVKypo6ZNoQw
         er2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=oHYRYg3moktGWjLSCEWnBEEyLoOVi9PvFjyfswN33gM=;
        b=dUh+AGggL0QHz9Ycvk8TwzPlKhG76E5uEXKgyL48BqHvSf5Nqwww3J5Jh+3SskdVB0
         IWOsWhjRnOfzTsPeYzUWlezY5ub4AuByKw9PvkPgDuUPmr8ncngjnPP6RzCyYa7i0Ell
         Z2Us0rdj92UO+vj4H/2JrrqzO5ZGm1s11DzLAq2NaPbPjp803c3WfiDcaCvAgJJ9i65H
         3UtT4RZbw6eiFfrxKm2S9s4nyYEb/GbUF7Icb21sWOAi1jt7ngWUDp/Lk6T1nzUnRrAO
         r1SUqYAHjY8qBOYEvz4avu1tsL+nOu+OzYuguPo7b+W9fAjqO7gSxTVG+wsgcI1l0AJw
         uehw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+5f4942ce@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+5f4942ce@netrider.rowland.org
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id x9si14639947jas.74.2020.08.24.17.35.02
        for <usb-storage@lists.one-eyed-alien.net>;
        Mon, 24 Aug 2020 17:35:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+5f4942ce@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 350796 invoked by uid 1000); 24 Aug 2020 20:35:01 -0400
Date: Mon, 24 Aug 2020 20:35:01 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Vito Caputo <vcaputo@pengaru.com>
Cc: trix@redhat.com, gregkh@linuxfoundation.org, linux-usb@vger.kernel.org,
  usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org
Subject: [usb-storage] Re: [PATCH v2] usb: storage: initialize variable
Message-ID: <20200825003501.GA350601@rowland.harvard.edu>
References: <20200824211027.11543-1-trix@redhat.com>
 <20200824211839.6c7m7yhgd7ffq3g3@shells.gnugeneration.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200824211839.6c7m7yhgd7ffq3g3@shells.gnugeneration.com>
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

On Mon, Aug 24, 2020 at 02:18:39PM -0700, Vito Caputo wrote:
> On Mon, Aug 24, 2020 at 02:10:27PM -0700, trix@redhat.com wrote:
> > From: Tom Rix <trix@redhat.com>
> > 
> > clang static analysis reports this representative problem
> > 
> > transport.c:495:15: warning: Assigned value is garbage or
> >   undefined
> >         length_left -= partial;
> >                    ^  ~~~~~~~
> > partial is set only when usb_stor_bulk_transfer_sglist()
> > is successful.
> > 
> > So set partial on entry to 0.
> > 
> > Fixes: 1da177e4c3f4 ("Linux-2.6.12-rc2")
> > Signed-off-by: Tom Rix <trix@redhat.com>
> > ---
> >  drivers/usb/storage/transport.c | 3 +++
> >  1 file changed, 3 insertions(+)
> > 
> > diff --git a/drivers/usb/storage/transport.c b/drivers/usb/storage/transport.c
> > index 238a8088e17f..044429717dcc 100644
> > --- a/drivers/usb/storage/transport.c
> > +++ b/drivers/usb/storage/transport.c
> > @@ -414,6 +414,9 @@ static int usb_stor_bulk_transfer_sglist(struct us_data *us, unsigned int pipe,
> >  {
> >  	int result;
> >  
> > +	if (act_len)
> > +		*act_len = 0;
> > +
> >  	/* don't submit s-g requests during abort processing */
> >  	if (test_bit(US_FLIDX_ABORTING, &us->dflags))
> >  		return USB_STOR_XFER_ERROR;
> 
> At a glance this seems odd to me.  If the caller insists on ignoring
> the return value, shouldn't it just initialize partial to zero?

In this case, the callers are not the final consumers of the return 
value or of partial.  They merely copy those values back up to _their_ 
callers, and those copy operations are what the static analyzer objects 
to.

> In my experience it's generally frowned upon for functions to store
> results in error paths.

I don't see any reason for such an attitude, at least not here.  It 
makes perfectly good sense, if an error prevents transmission of an 
entire data buffer, to store the amount of data that did get 
transmitted.

Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20200825003501.GA350601%40rowland.harvard.edu.
