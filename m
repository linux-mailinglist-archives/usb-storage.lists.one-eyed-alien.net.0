Return-Path: <usb-storage+bncBCWLFYFHWUPBBL6TUXUAKGQEV7PLK5I@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x845.google.com (mail-qt1-x845.google.com [IPv6:2607:f8b0:4864:20::845])
	by mail.lfdr.de (Postfix) with ESMTPS id 30E914ADF9
	for <lists+usb-storage@lfdr.de>; Wed, 19 Jun 2019 00:46:08 +0200 (CEST)
Received: by mail-qt1-x845.google.com with SMTP id g30sf13883683qtm.17
        for <lists+usb-storage@lfdr.de>; Tue, 18 Jun 2019 15:46:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1560897967; cv=pass;
        d=google.com; s=arc-20160816;
        b=KttQxZICl6JM8mxYkvaHHFw3W58k1MwbhxP7HXtQ+eBvrxv/lb+lY0qWaAsPm04zlt
         BkdVYlS1mNwCnVvw2NanaNOOrh1bqEYCX6V6nuSqrMZ8bqJhkpks0+r2qK/pCyUdtYI9
         AW/sXg4A+qr6AUVHMzekWd5uzLkqQIeI1e8jf0BfnCyKwrlceS5SVFaj+ry0OZ/YZHOC
         K4WNQbwKpSD+jMtH/nQcbpcHrtJ1jtzZqAS9QwCsWIOMqb95Ll1ElSb7wFCEbDxBY7GC
         w6NvKxDzH7X1HYsVAQLif15Wg4SDuuejJnOBj9WLkMYVV6g5FKYSHm5lHiX1tsmlssvV
         eT5A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=b5qVMt6+6YHHB10P9HmLp4BEDJlbJbNzIhSxUOiPTYU=;
        b=R1k2hFhME22KP8O9flDGE8LpJ9F0ykkWwhBhC0AHwUf5QE30eRLwjLQenPJdhzoAmQ
         oRCoM71p0DkOsrMY4CVk3wua5TENXAr8pmqkB5qgFodl6DeDMuNupTyFVINNkWDCoYwc
         o/VyxVlosyXbd15nI8L33LgUeyskVys1CjfCJJj4GleDzNgYdlWJXl5Y7FV+NqEgK5MM
         F+vO3cnFyl/MOyxaw8WAlhvzUuMNr6EC5pCnGgfBPnBdVIarEixs/GOPzCPMqnMvH+s3
         yripXmVa/X57rXquTC2FdUgCPZaDrFnlHxXaWiC+LgEZfi/ieVJ/kXFTFKQp85gA7mxX
         XRag==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aMWtH1wg;
       spf=pass (google.com: domain of marcos.souza.org@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=marcos.souza.org@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=b5qVMt6+6YHHB10P9HmLp4BEDJlbJbNzIhSxUOiPTYU=;
        b=PdnAv7PPgLnUgMwDLgrsKJC2M7PD46IkzcaMnC4bNLWNnn81y2B6Ym51aveEoTzHTd
         peSBjIVU9znfnyKlX2eAbnzVj1SfpVdPrAcOVW5AHpOP9BuiRIKUQajc5rlvIehN0EvX
         +JecfhKoQVjXEjnpHpAnKfwaZ4q3iTHYU1PmU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=b5qVMt6+6YHHB10P9HmLp4BEDJlbJbNzIhSxUOiPTYU=;
        b=Ds39hOva95v4hBGVwiWhLBjMGs+Xwd6pjfODjtP/245bET42g2RIrsaCF3P9wy2Ya+
         nKA9/Y7NKfBmqQyaI89JfJ7D9eHXwy4+IdcvGFqdJZbZz3C30a84FhUS9YaBNC51Jlfn
         vm5ZOdLnHMiob+oWE4tm9r99lGQcPMdWc1+M6RGfHBjjntBS9fESGXunL276YcIH/iSo
         V1RcqyeWNFzT67vw91Im9z06p9WKJOK0/eBJJLWW11+UzgztXuclbGF/SxJNX4DejSgl
         AaRyV1kuXUi5ui4B3WAmqwD52PPVca1wwAo9dD0I0LPsq7Jv9zKWXtHuY6uczx9YwwRn
         4RrA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAWFc6YP0SiIWmeFn2cKdsu0dQkbg4Qor9lAJ2mXIlWv5Xg1LOTf
	IpLiNyJTaVanfeTOsn1U75aj/g==
X-Google-Smtp-Source: APXvYqypj4isEliEoa/B6UaGvW/TQ+aFesR24xaIdKolUXZKNbW9ymSYvJWmwC+g4rmaT81T488biw==
X-Received: by 2002:aed:33a4:: with SMTP id v33mr68086747qtd.18.1560897967099;
        Tue, 18 Jun 2019 15:46:07 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:aed:3a68:: with SMTP id n95ls66616qte.10.gmail; Tue, 18 Jun
 2019 15:46:06 -0700 (PDT)
X-Received: by 2002:ac8:6898:: with SMTP id m24mr101331956qtq.362.1560897966813;
        Tue, 18 Jun 2019 15:46:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1560897966; cv=none;
        d=google.com; s=arc-20160816;
        b=YsZaYvycAT7/Qxkd3MocleD3ClOGe9fRL28AiwMSHEeRovNJ0sSrHi6TfJ6bAhyw1R
         v8hEHk2w8ZiQ16En8YLHiiPkzLlMlNy0iJe0Ap1XJ/zDQTtKwVcdryxloFF86fnfHIzh
         cJ79hgKWxv/Cl9aVhaeI/oE5jb7IZxZfu5lBHixy4nevkhAl6qyn98zXsuYfZ3NexF9y
         +iCy/S+msiY2bb3qAVaeHgMvHfiLfs5PdJHLo5OcO0/b5Of1xyHsFovcXCLxNOSJUB4O
         lCotFvJQIXhHKMVXorddQqmIyysMw0xCkr9VMfultTMvZwiVtoYayq3Zk9/AwefdBM8x
         pqiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=mUtA9/6/AAD1eIEyzfXACbNQ2OjUtf2oEBKdRu1pSvE=;
        b=U0tdntA0ZM4rMFfCyZSBWVlxjWJDhcaz2bCX6HZEAsCEXQz3hwwnziYl4R1iZq8jq+
         bdf6dJHZO4/EK6ZVPo6THSOYApm4I6V866RcyB9qHy0k/BpjOsxVOciYavXv8w6vajq5
         KjXk57wODeZ5N32FWL0TQ1FjuC8DxWiIjhFsxTC2TaUe4PyL+V++Ww/j9bQ5/fAQrebt
         jzA7RvWe9QCf1NTEXlI5R7jJd4vM1iUPWPlKapKnwXvb/AtUPcmrmo29XpTIouuSe01S
         8/q8pK/7krs6594L0GjJvf2WsbsmNKyDAufyy5AJK+Le9pisfXrPjdKw23qJ9AUAnO+E
         c84w==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aMWtH1wg;
       spf=pass (google.com: domain of marcos.souza.org@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=marcos.souza.org@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id x127sor10138429qkd.4.2019.06.18.15.46.06
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Tue, 18 Jun 2019 15:46:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of marcos.souza.org@gmail.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:a05:620a:119c:: with SMTP id b28mr45261206qkk.104.1560897966524;
        Tue, 18 Jun 2019 15:46:06 -0700 (PDT)
Received: from continental ([186.212.50.252])
        by smtp.gmail.com with ESMTPSA id s66sm9090841qkh.17.2019.06.18.15.46.03
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Tue, 18 Jun 2019 15:46:05 -0700 (PDT)
Date: Tue, 18 Jun 2019 19:46:35 -0300
From: Marcos Paulo de Souza <marcos.souza.org@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Alan Stern <stern@rowland.harvard.edu>,
	Kernel development list <linux-kernel@vger.kernel.org>,
	SCSI development list <linux-scsi@vger.kernel.org>,
	"open list:USB MASS STORAGE DRIVER" <linux-usb@vger.kernel.org>,
	"open list:USB MASS STORAGE DRIVER" <usb-storage@lists.one-eyed-alien.net>
Subject: [usb-storage] Re: [PATCH 2/2] usb: storage: scsiglue: Do not skip VPD
 if try_vpd_pages is set
Message-ID: <20190618224633.GA11899@continental>
References: <20190618013146.21961-3-marcos.souza.org@gmail.com>
 <Pine.LNX.4.44L0.1906180946160.1659-100000@iolanthe.rowland.org>
 <20190618151737.GA16959@geeko>
 <20190618160724.GB27611@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190618160724.GB27611@kroah.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Original-Sender: marcos.souza.org@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=aMWtH1wg;       spf=pass
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

On Tue, Jun 18, 2019 at 06:07:24PM +0200, Greg Kroah-Hartman wrote:
> On Tue, Jun 18, 2019 at 12:17:39PM -0300, Marcos Paulo de Souza wrote:
> > On Tue, Jun 18, 2019 at 09:48:01AM -0400, Alan Stern wrote:
> > > On Mon, 17 Jun 2019, Marcos Paulo de Souza wrote:
> > > 
> > > > If BLIST_TRY_VPD_PAGES is set for a device, even for an USB, it should
> > > > be honored, so only set skip_vpd_pages is try_vpd_pages is not set.
> > > > 
> > > > Signed-off-by: Marcos Paulo de Souza <marcos.souza.org@gmail.com>
> > > > ---
> > > >  drivers/usb/storage/scsiglue.c | 7 +++++--
> > > >  1 file changed, 5 insertions(+), 2 deletions(-)
> > > > 
> > > > diff --git a/drivers/usb/storage/scsiglue.c b/drivers/usb/storage/scsiglue.c
> > > > index 59190d88fa9f..0a9520780771 100644
> > > > --- a/drivers/usb/storage/scsiglue.c
> > > > +++ b/drivers/usb/storage/scsiglue.c
> > > > @@ -195,8 +195,11 @@ static int slave_configure(struct scsi_device *sdev)
> > > >  		 */
> > > >  		sdev->skip_ms_page_8 = 1;
> > > >  
> > > > -		/* Some devices don't handle VPD pages correctly */
> > > > -		sdev->skip_vpd_pages = 1;
> > > > +		/*
> > > > +		 * Some devices don't handle VPD pages correctly, so skip vpd
> > > > +		 * pages if not forced by SCSI layer.
> > > > +		 */
> > > > +		sdev->skip_vpd_pages = sdev->try_vpd_pages == 0;
> > > >  
> > > >  		/* Do not attempt to use REPORT SUPPORTED OPERATION CODES */
> > > >  		sdev->no_report_opcodes = 1;
> > > 
> > > Acked-by: Alan Stern <stern@rowland.harvard.edu>
> > > 
> > > Although I think it would be clearer to write:
> > > 
> > > 		sdev->skip_vpd_pages = !sdev->try_vpd_pages;
> > 
> > I agree. Greg, would you like me to send a v2 of this patch with this change, or
> > can you apply the change suggested by Alan?
> 
> I do not hand-edit patches, sorry.  It does not scale, please resend.

No problem, v2 just sent:
https://lore.kernel.org/linux-usb/20190618224454.16595-1-marcos.souza.org@gmail.com/T/#u

Thanks Alan for the quick review!

> 
> greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190618224633.GA11899%40continental.
