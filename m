Return-Path: <usb-storage+bncBCWLFYFHWUPBBHECUTUAKGQEIKRABYQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x448.google.com (mail-pf1-x448.google.com [IPv6:2607:f8b0:4864:20::448])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DAA04A51E
	for <lists+usb-storage@lfdr.de>; Tue, 18 Jun 2019 17:19:58 +0200 (CEST)
Received: by mail-pf1-x448.google.com with SMTP id i26sf9469080pfo.22
        for <lists+usb-storage@lfdr.de>; Tue, 18 Jun 2019 08:19:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1560871196; cv=pass;
        d=google.com; s=arc-20160816;
        b=qSDX5vqeSDQiZJFZqc7rEaKgo8yeEqa4ViWMaEtEr618i/3X7W89FUiFBhJuf9gDi/
         iCZcqNltCWQ1XSFK5TUrjF2gvJpRxONSOw1kkxhAY6GmJwtec5IP4GhFFAKMNZQ2tZ6N
         1I9uKHEBZZhqstsiksyQlHLondOJpZeGgTUm2OZNTS0poDOA0y2k9d8i4Q586tYfSUFJ
         jRfDJvTWuMCHhROqmIxbYJFQ2GZ9eaMAhtL0EBSFq4Djr+FzX7vS97/AJcOaxbNEgysM
         hYc16xGhFX1mvHHNmYIXiGDPc/plOTFnALqWds5iJd8MPhqy2LyXxV57wfNGSAmkAXOW
         qScQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=4ohli0XPSfP40nMWkW0BSHagRNXQ7HqxwfeOuew+Xw4=;
        b=rNY/WjGFDxTmlhDMXwtOngqkC2PRmUtgdUy3oxaQLUoFSEkKRzyNCT8MoJdlPN3LUm
         s8hSikhulOWGbclOrRyHOuoAZk2olv8/dZYWZXmLJ8uJHHfVGrE38AuraGe6IFFWKe+r
         YIM2UO3kiFOZRnp+EdSeIXlIi8baT+Ygtk7tYurgp6Cnn9TYOUb+GjrqW7x2K9G7+wXw
         CBtscYOS/3H58La2kKBVkFbDhSAu3MgmmGAoynikWQDjgC1HJt8CqfH3tp6p9+N6W3F/
         fo3YHSTaGIp1kk5h4Orak38jtEseMlQYjPGkDUcE9H8c+5KP51ByJhEzWTd1n614TTLD
         E+4A==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VmQfx+N+;
       spf=pass (google.com: domain of marcos.souza.org@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=marcos.souza.org@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4ohli0XPSfP40nMWkW0BSHagRNXQ7HqxwfeOuew+Xw4=;
        b=Ky6m2K6A02RCS9oweBBleR3Ucrh9XALWHqoNREXkhEgnhOKcl0JbQ/1BR8K+KSx9Ww
         d8m9Ma3cCIJK6o7vfPTQmh+f8VdPIbWMs0VAidkiVowycBrlpgPoLoJV2A/wdsqWI+gY
         1v5IBnqA7AlvPKkJYcu1XacZsiJoo74wMHtFE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=4ohli0XPSfP40nMWkW0BSHagRNXQ7HqxwfeOuew+Xw4=;
        b=AIRia8OJz33FXSagRwftoJdko4nrmiCOlL0zHmkHYBRTTThncv5lPpKrXHAkpvGVIe
         w8froQg0VyerYzJqGJhGZW52Tm3yink1I6GRmz8JfYrTAW/cGjjsy6atwFuqGGLhu0ru
         cMeFZw4tpG8g1EEApZwEMDQHvH9AvR5h6Iroy0Henjyhvs79tVCgXmZ97Ox2IPEFx/wT
         nUAOYTwe1TsgjhzlmY3en5/yChPQ3c6yYc3D/1Yk1dKnoj479ObRRSk5tGFA4P0wPrCW
         4JV8qjAOBtScUFzqLp7kPyK4hZQfw8/YaIu4oc2EedjtowLF7YWdf9vvSTtZ2JQfrJkL
         BX0g==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAUgLgtoWnVWWN0v9RMPvmSyGAW+rkHRISxOQo3Oa4MVr3gMe/yA
	l2wclrF45OTgP7a6LzTSXTkhhA==
X-Google-Smtp-Source: APXvYqyHTALi7+NVXzBAKsvKUzdwnjKrVOr3b9ZVk8lIFa7OWoTn7JWeZ252rioX4ci9vn+1OcLwzQ==
X-Received: by 2002:a63:fd0d:: with SMTP id d13mr3273083pgh.423.1560871196289;
        Tue, 18 Jun 2019 08:19:56 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:902:a9:: with SMTP id a38ls4930727pla.5.gmail; Tue, 18
 Jun 2019 08:19:55 -0700 (PDT)
X-Received: by 2002:a17:90a:be0a:: with SMTP id a10mr5423353pjs.112.1560871195653;
        Tue, 18 Jun 2019 08:19:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1560871195; cv=none;
        d=google.com; s=arc-20160816;
        b=o+8Td6dZvdyTcJNksWvkYZC9X+cIB2ClsD+BlKB+1ooQjPBv1G4XnIdtZtQtr+Kg4T
         eVJurqIMSu/Z80A4/wd3h/F2ULlROkqetvh5URF0RJGQbB6EzIwABlxf3v4ApOkovchY
         B1ouDeaut1NH+/Ukscsn6Id72tVJAOPZU7ScoI10zFEjAeJcZeg6sbodqj3YbixJk/A4
         3HHenbJ2+ohk4kfn5dyrSWhFXImUv9fzug4uyGZTZ5HJq+yOS1vt3Dease0OEr1NcAdg
         2NbodrkvvBZyx6XLFBCJHZxmWIRvW342XMnfrbleF+eUSSXsEzAtdrJ9lUvGGJZ+ooC8
         SoRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=fq5VhcilP64BeWXL9owdbnBuYJRBLePLtFWb4+IFtS0=;
        b=ydhDX/x8EWlEScG7SQI+XqghYFXa/cZFQFf1e1JUt8yBNlTiezouhi7cPpNg304MGI
         eyLWCnmDHXxlNZnnhAkWxog2rLdSyuu49M+BiWt1AjNyvo46q56w45K1Ay1nYY0CHlpU
         JL6OxXNugEyxAjCyHpTZ5ol3bnjGIhHiren9zoquZXAAGrU3MZHrhprcqIAYJjY958si
         hJ7rQL0gO0uX6dPILo5HzX4hDlnkXed6y6VrtTvuD9o+i7hmG2kKkHwKaId1pHUD7EB/
         p6Su/ZCKBxpLHv2npbbUh/czkF3duDrK3SzTIxCz1QR+JnVw7vv5Ci6HZ4GmGetzso4R
         Nelg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VmQfx+N+;
       spf=pass (google.com: domain of marcos.souza.org@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=marcos.souza.org@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id c15sor17915660pls.61.2019.06.18.08.19.55
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Tue, 18 Jun 2019 08:19:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of marcos.souza.org@gmail.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:a17:902:aa03:: with SMTP id be3mr36658303plb.240.1560871195259;
        Tue, 18 Jun 2019 08:19:55 -0700 (PDT)
Received: from geeko ([186.212.50.252])
        by smtp.gmail.com with ESMTPSA id j8sm14613224pfi.148.2019.06.18.08.19.52
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Tue, 18 Jun 2019 08:19:54 -0700 (PDT)
Date: Tue, 18 Jun 2019 12:17:39 -0300
From: Marcos Paulo de Souza <marcos.souza.org@gmail.com>
To: Alan Stern <stern@rowland.harvard.edu>
Cc: Kernel development list <linux-kernel@vger.kernel.org>,
	SCSI development list <linux-scsi@vger.kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"open list:USB MASS STORAGE DRIVER" <linux-usb@vger.kernel.org>,
	"open list:USB MASS STORAGE DRIVER" <usb-storage@lists.one-eyed-alien.net>
Subject: [usb-storage] Re: [PATCH 2/2] usb: storage: scsiglue: Do not skip VPD
 if try_vpd_pages is set
Message-ID: <20190618151737.GA16959@geeko>
References: <20190618013146.21961-3-marcos.souza.org@gmail.com>
 <Pine.LNX.4.44L0.1906180946160.1659-100000@iolanthe.rowland.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <Pine.LNX.4.44L0.1906180946160.1659-100000@iolanthe.rowland.org>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Original-Sender: marcos.souza.org@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=VmQfx+N+;       spf=pass
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

On Tue, Jun 18, 2019 at 09:48:01AM -0400, Alan Stern wrote:
> On Mon, 17 Jun 2019, Marcos Paulo de Souza wrote:
> 
> > If BLIST_TRY_VPD_PAGES is set for a device, even for an USB, it should
> > be honored, so only set skip_vpd_pages is try_vpd_pages is not set.
> > 
> > Signed-off-by: Marcos Paulo de Souza <marcos.souza.org@gmail.com>
> > ---
> >  drivers/usb/storage/scsiglue.c | 7 +++++--
> >  1 file changed, 5 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/usb/storage/scsiglue.c b/drivers/usb/storage/scsiglue.c
> > index 59190d88fa9f..0a9520780771 100644
> > --- a/drivers/usb/storage/scsiglue.c
> > +++ b/drivers/usb/storage/scsiglue.c
> > @@ -195,8 +195,11 @@ static int slave_configure(struct scsi_device *sdev)
> >  		 */
> >  		sdev->skip_ms_page_8 = 1;
> >  
> > -		/* Some devices don't handle VPD pages correctly */
> > -		sdev->skip_vpd_pages = 1;
> > +		/*
> > +		 * Some devices don't handle VPD pages correctly, so skip vpd
> > +		 * pages if not forced by SCSI layer.
> > +		 */
> > +		sdev->skip_vpd_pages = sdev->try_vpd_pages == 0;
> >  
> >  		/* Do not attempt to use REPORT SUPPORTED OPERATION CODES */
> >  		sdev->no_report_opcodes = 1;
> 
> Acked-by: Alan Stern <stern@rowland.harvard.edu>
> 
> Although I think it would be clearer to write:
> 
> 		sdev->skip_vpd_pages = !sdev->try_vpd_pages;

I agree. Greg, would you like me to send a v2 of this patch with this change, or
can you apply the change suggested by Alan?

Thanks,
Marcos

> 
> But that's just personal preference.  This is okay as it is.
> 
> Alan Stern
> 

-- 
Thanks,
Marcos

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190618151737.GA16959%40geeko.
