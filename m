Return-Path: <usb-storage+bncBD6LRVPZ6YGRBPFSXORAMGQEV3ZSTRA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf45.google.com (mail-qv1-xf45.google.com [IPv6:2607:f8b0:4864:20::f45])
	by mail.lfdr.de (Postfix) with ESMTPS id 741936F2AE0
	for <lists+usb-storage@lfdr.de>; Sun, 30 Apr 2023 23:10:22 +0200 (CEST)
Received: by mail-qv1-xf45.google.com with SMTP id 6a1803df08f44-61a6bb9f808sf3706606d6.3
        for <lists+usb-storage@lfdr.de>; Sun, 30 Apr 2023 14:10:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1682889021; cv=pass;
        d=google.com; s=arc-20160816;
        b=CA9habR09racbufb+vIvqwC3SqM9t9cwZamn95ux+MyB6mv4R4bntuYZpOi6Q1+3N+
         g6EW0y1igraP2Wo8DjyhhQvEbvpm2s3bKoqLTSQkOmVf67QfykoBziefa/LP3jrReu4S
         Ve6luNpyhBrM3ycR6fFZhsIBvwZYwkLt3MrrSwzYSY0BBQY8dFM5YhkrryCQxmILRx7c
         BySFa7/NNop6d6zDZsmFKAd3UFkP1y5BF3QRDJDyAPUn50xslpWLd3M81OxueQFsh/Vy
         pwSJ2OMA10iHQd1CGjJIJkOltNXylVqkJicMyHn0/03sJvfGB2OHxkLpDJjEBIBdBrmi
         Sxsg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=9aEqnp+yBXxf6Pz00dkDSkr6VLhLe/K1SANDKIP5TQg=;
        b=doalshMpw/g1H2Vei24pqIEnUhX5wUt9sltixe5w+1ezhKrUxo39uG0iBuFxFMU6mc
         j1WjJeXhykK2Cj9CHICw8QtA89i768qN8RMY6bF0O6DK0U2tqW2+/sv0DNzSXBlbGhG8
         olelrYLGShpZcLhKX0gejl4XwZFt1rZP/sMPJ4LBR9sR7q7Izl1iJBjMIleoHc3+nuyZ
         iHRmeIed1U/1TsIQERQu+h2WLQYaeGoxEeTtHxjbgKpSRqGSjCdmJSeReW7y2sQbK4wJ
         XLAS1QVG9uJ5iOZakua7TzATekDOLqe0POizbfuaxluDdJGwJ5HpXGivUEPylCAM99pD
         kFug==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+6456d096@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+6456d096@netrider.rowland.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1682889021; x=1685481021;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9aEqnp+yBXxf6Pz00dkDSkr6VLhLe/K1SANDKIP5TQg=;
        b=dPbOI0nmGRUsGf62gxUJSFXDJTSNjw0aNBbP58F68v4UgX2LkyOAxmSA6FtKx9gF8B
         3HuG4olxVI2bt/xNTEtzLUYe93prr7fMtbII97e9Uzosie5lM4CCjYkhbhOXzfexqyqH
         CMcFH4/4NK0Gy6GBcNt5vbaqS8g6kTpo5/6X0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682889021; x=1685481021;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9aEqnp+yBXxf6Pz00dkDSkr6VLhLe/K1SANDKIP5TQg=;
        b=L/euc+nq+a/NBQYtvMZCePzMtVtulO7+I4yWQts5NjMEt4ixuHw3CeJe3kiRgtSj1K
         CUVzWcmmRZ7tR+hYDhVX/RxWb6jVxIufcWH20XFeQWQnbjh+NquKy26/gPu3zs7HbT5b
         +noX4/NKZJCmLQSXfmtMrNvvlrnDZIJLiogI71EASX82YJ/x2mzOZ1cQNI+aNOL4n+Yr
         auK7iHuUq0eGtNWMGkd0SSYm8P0MenQVl1aLOLb1U6Gxt5dMSkMHk8mHDuJN1xtxwaX6
         8DLCMxeSJAghDi0zbU1QcrRDXxpm10pP6FXwm1SQd5Q9QeTP6Fc+vosMFERATQhJm1V/
         gJhQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AC+VfDzsBdJ7LvtSI++8nP1YHCxAmnfsua6fARbuJRb5XJZdl7Ju3Ebc
	+yWvgA8ouDF7imbkSIDb6aB/TA==
X-Google-Smtp-Source: ACHHUZ7hiDvHrV9hJMyKEM4QPF7PZwg779/qyp0aSL0+lTJhuSYplsl+sH0Oy5LZR4dFBK4RWLH8Bg==
X-Received: by 2002:a05:622a:1885:b0:3e6:3806:70e3 with SMTP id v5-20020a05622a188500b003e6380670e3mr4217047qtc.8.1682889020952;
        Sun, 30 Apr 2023 14:10:20 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:622a:260a:b0:3e6:2f9b:1d4 with SMTP id
 ci10-20020a05622a260a00b003e62f9b01d4ls8750081qtb.3.-pod-prod-gmail; Sun, 30
 Apr 2023 14:10:20 -0700 (PDT)
X-Received: by 2002:ac8:5a8b:0:b0:3ee:1771:fc9f with SMTP id c11-20020ac85a8b000000b003ee1771fc9fmr18982072qtc.56.1682889020244;
        Sun, 30 Apr 2023 14:10:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1682889020; cv=none;
        d=google.com; s=arc-20160816;
        b=FSyxFTJ1xF05mx+DP6I2Ap4iaK0pbKYnq5KJkVFALFSJsfzrnL5X8I5ef7+qIE10E0
         JOFQoyVcOnw8qHkcqUd6j2/F1VynEgvDW6EOK5nulcC3yvjj8zD7U0i73m0El4AWxzYJ
         Fi3XuejX+/bC+B5RA3e1I/LGDJpnwXFepPHk5FNzDnFrYLa/XBaDnwObOAi440GK4P49
         BTBS1x0PIKlop/l3dty5tWQf0aqiHfHMNy98fwPb3lhtf+dDfpVqaWoaao/7VeTF7K1w
         7vtZTVtSC9AoT66W72bGhyDCWfVvfSY54KBInTsHwv7Sb9YpE0bxxEN3JWzS9J68BGRN
         2Dmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=fLl2NmWA0SwKR/ZW1YkKXA9MUudp/nqx354s6VzcSq8=;
        b=DsG149Wnj7l6m89WI6LGYDdkU6BTrF5I9CpqkHjtz2w0D1OgGQd0NX3aav4njeR7Es
         xSzl4B/vmrLzNfvGechyuu8FU7iY5sV4ULBtDE540iSEbpGly1RxdxyDFQ1NMIgRCfwA
         JJ2bxFFOB6V4WQ6ZpLy01oRgi2KU3jp1YcWCUgVQYZeGAvCmrlgDBF7GFWhnIlSi5C2L
         ipl9b55CgpIVmoxMxljSbdYtE0JilNUsRh7g27UqP5opWvappMrPjmPuvsgzfamGdaQt
         cReHB+Z/FL98rDuIitplP3v/LQYD47HD9IHoVv1ZMC/7Tspzhe2yHK3TYuP7XWlFQN+k
         Thcg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+6456d096@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+6456d096@netrider.rowland.org
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id 3-20020ac85703000000b003e38e551e6asi844248qtw.358.2023.04.30.14.10.20
        for <usb-storage@lists.one-eyed-alien.net>;
        Sun, 30 Apr 2023 14:10:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+6456d096@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 278534 invoked by uid 1000); 30 Apr 2023 17:10:19 -0400
Date: Sun, 30 Apr 2023 17:10:19 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Bart Van Assche <bvanassche@acm.org>
Cc: Maxime Bizon <mbizon@freebox.fr>, linux-usb@vger.kernel.org,
  usb-storage@lists.one-eyed-alien.net, linux-scsi@vger.kernel.org,
  Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
  "Martin K. Petersen" <martin.petersen@oracle.com>
Subject: [usb-storage] Re: Reproducible deadlock when usb-storage scsi command
 timeouts twice
Message-ID: <87351d78-aab0-4785-a420-d967b266aebd@rowland.harvard.edu>
References: <ZEllnjMKT8ulZbJh@sakura>
 <34a2e50b-e899-45ee-ac14-31fa0bb1616b@rowland.harvard.edu>
 <e9165662-7af2-0540-f823-56a5f051620f@acm.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <e9165662-7af2-0540-f823-56a5f051620f@acm.org>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+6456d096@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+6456d096@netrider.rowland.org
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

On Sun, Apr 30, 2023 at 12:39:12PM -0700, Bart Van Assche wrote:
> On 4/26/23 12:20, Alan Stern wrote:
> > > This patch fixes the issue, not sure if it's correct:
> > > 
> > > --- a/drivers/usb/storage/scsiglue.c
> > > +++ b/drivers/usb/storage/scsiglue.c
> > > @@ -455,6 +455,9 @@ static int device_reset(struct scsi_cmnd *srb)
> > >          usb_stor_dbg(us, "%s called\n", __func__);
> > > +       if (us->srb == srb)
> > > +               command_abort(srb);
> > > +
> > >          /* lock the device pointers and do the reset */
> > >          mutex_lock(&(us->dev_mutex));
> > >          result = us->transport_reset(us);
> > 
> > Maybe...  But it would be better to check first whether the SCSI core is
> > supposed to be reusing an active srb in this way.
> > 
> > Martin, can tell us what is supposed to happen here?  Is the
> > eh_device_reset_handler routine supposed to be called with a scsi_cmnd
> > for a currently active command?
> 
> Hi Alan,
> 
> I'm not aware of any other .eh_device_reset_handler implementation that
> aborts the command that is passed to this callback before it aborts other
> SCSI commands.

That's not a good description of what's happening.  For one thing, 
usb-storage can process only one command at a time, so the "before it 
aborts other SCSI commands" part doesn't apply.  In fact, the proposed 
patch aborts the current command (which happens to be the same as the 
one passed to the .eh_device_reset_handler routine) before beginning a 
reset.

>  However, I'm not aware of an equivalent of us_data.dev_mutex
> in other SCSI LLDs either. Maybe this deadlock is specific to the USB
> storage handler?

The deadlock, if that's what it is, is related to the fact that 
usb-storage does only one thing at a time.  The mutex is there merely to 
enforce this; removing it wouldn't help matters since the driver still 
wouldn't be capable of doing more than one thing at a time.

The underlying unstated issue is that usb-storage doesn't have any 
timeouts of its own.  If a device fails to complete a command properly 
and the SCSI error handler doesn't abort the command, then the command 
will never finish and the driver will hang.  (Until the device is 
hot-unplugged, of course.)

I suppose a bus reset would probably cause an ongoing command to fail.  
A device reset almost certainly would not, since most device 
implementations of the USB bulk-only mass-storage protocol do a very bad 
job of handling device resets.

Either way, it's a lot cleaner simply to abort the command before 
starting the reset.  If usb-storage can't depend on the SCSI error 
handler to do this for us, it will have to do so itself.

Alan Stern

> Martin, feel free to correct me if I got anything wrong.
> 
> Bart.

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/87351d78-aab0-4785-a420-d967b266aebd%40rowland.harvard.edu.
