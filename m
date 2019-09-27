Return-Path: <usb-storage+bncBCK2XL5R4APRBD6CXHWAKGQE76JQ6XI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x647.google.com (mail-pl1-x647.google.com [IPv6:2607:f8b0:4864:20::647])
	by mail.lfdr.de (Postfix) with ESMTPS id C4A90C0C01
	for <lists+usb-storage@lfdr.de>; Fri, 27 Sep 2019 21:20:49 +0200 (CEST)
Received: by mail-pl1-x647.google.com with SMTP id f4sf2226423plo.7
        for <lists+usb-storage@lfdr.de>; Fri, 27 Sep 2019 12:20:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569612048; cv=pass;
        d=google.com; s=arc-20160816;
        b=M8sIvkniPSTXm6qmgnYy2nsKbbDuOWzVABOKfK8Io81Lt3WCZj2+4t5JrU4pPaxzNL
         1lRaBmogiA+1O3+Z7h8PMuCdcsaVCnt1W4iM0PAXDxGo6RVB7JelSxFzM+U4ZO7EEig+
         zJif1dQUxAFLKUjlneKZgRYWSmeuGGQKbfVZ2OIeuNyHCZRvOEwArgOTM7E44knIyPtO
         psSS8QqbqAVUvtdBo0IHNV/3UYn39T8HVDSia3jTd+GBXCWhasvs3+Kxz6wN3ntmKtpJ
         q8eZroqMUg/17gVrJvYMLh+ih1X7X+StxXh/LDH3efd3cGZAa0KWma04cJ8Enz/VAAV2
         uMCg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=RaERPJNOPhjQLH1JLlt4ff/7UfaLSNWlNVBa0iVtsVQ=;
        b=UnL+mL7jqyinOCgAjM5L0wrg2hzZlRQFxEH7z4isVzmSn8/fejLUSUk/pmfue13Im7
         x3TnIOQsQw/Z/wHbA+2RsV55+rI2dMcO8BsqcxgvUCHf2aMyUByHVm45W73j5hyjSnU9
         Tt7RRA5Uoy9AwwtfJe0od4HSVlj207BPpQwPchzRNuCgFss4x38HpFRm+baJ2QPHBYzZ
         7IK5u3yWX7D4YB5m/urd5ifuNbw5Ot8z33PIoRtU2hUR0zpydtgcOyg63AHP2vDYdYfh
         MWJ4GG04JeSv4ZErySVUTLwVl/GSGWx6oXZTpm39sZk5u3z5mm99TzbUGOj3cYoMYQ6/
         JjSw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=UiCLVt0P;
       spf=pass (google.com: best guess record for domain of batv+67ffa2baba6e7f73c13c+5878+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+67ffa2baba6e7f73c13c+5878+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RaERPJNOPhjQLH1JLlt4ff/7UfaLSNWlNVBa0iVtsVQ=;
        b=eioePtR9FAjoAOfl1nGW0zXY2Nldl/zbUrbcDXU7kb3SWQSWji2YVKYRiB9iFU0tap
         3BXLV5ntTA/7smZ3jQCnF1tEePpjalTEZS5FuYlDqMxGtpVQkt/c32KO7u9CEdtXDGnD
         5oDovG7cfI5TvThyUO+0XiNYYxIKxtzfLrq6Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=RaERPJNOPhjQLH1JLlt4ff/7UfaLSNWlNVBa0iVtsVQ=;
        b=K5HsgTmMB5NDoB+/4LNFWzx215ioLCydM69NFkyc6Fe3QU43WEGKxtuLjSBmSY+u5o
         TgHbkkXqHBNg3IpWgWaIaegIjDHGahTp3nxVZ6TQpfPjoSRs/jiVYQpVj7MtEu4jidn2
         NsmRpfpL0Oat/7m8P+V5eF1pUoSQczXt8IE3JdV8xtJKgTIXqrDCt0QB8/hUENzTYZI7
         QGgMZvXDywdco4CiMGnigOO16/7/FdF3giOabSkdXZGbqL9GUqXaaM7ebQ9MPIpizswR
         i2KYiXU9NvAJhha+hOCp6O1JmdOpKsoODaHzgsJAw3QAe9xexYPxWpdq3KCKN1moP80c
         /Yew==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAUeay4gEFN5ySr7Kk4S+xNOtjv+MV3M8C3gj5T0Aa8sEKdaA2Xu
	dYQwPZT7NVfZMNp/UNmphaX6Sg==
X-Google-Smtp-Source: APXvYqyjY380b8fGZhyjblTAkrn4OzXFXOIP82Hngye5aix1EggIZgHUAqdewKuut/kJ+3PIwHZcNA==
X-Received: by 2002:aa7:96a9:: with SMTP id g9mr6194858pfk.16.1569612047742;
        Fri, 27 Sep 2019 12:20:47 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:902:ac93:: with SMTP id h19ls935917plr.6.gmail; Fri, 27
 Sep 2019 12:20:47 -0700 (PDT)
X-Received: by 2002:a17:902:fe12:: with SMTP id g18mr6251335plj.97.1569612047158;
        Fri, 27 Sep 2019 12:20:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569612047; cv=none;
        d=google.com; s=arc-20160816;
        b=Qlq0cGlMHzUMC7pRbAzl9L7SxdlDDQkI1akP3DhiuzDFcqR+xHa1nICcwl8rA96JRR
         va4qrcWjGKudxH6nHlvNCO+K7LJocYp5OwApmk3fWBvjvN1hbMZsgE3NxOUULeNyOefi
         zY2I1dinPs4Ui5PEqCwU1F5OaL3sHn9leMjQkavE61g8Nr557a7OyAlCy9hZqK5HVyHR
         AKMue3uQOJgkzsZN6LY/zN0qsQPTa+Wj4mr75SyhUZHMvy/tC5tqiKLn/pAeNB3IebVG
         G1GveTdYtjpjtK0z3UiCWNGujcTE+UOa2q3Rj16BgSzwjbRW4gwWtcbtBcae0v+CeafF
         mgiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=s8ypukgQOLXAIyF2hdNYPqQSa7FeAbisPLKET7G1YAU=;
        b=OMgZo0RSJaAKSa/bUmK1R8LJAT6Xk9fPC0bmdDC+hFxSACi4PMxySlwQfNHrifS+Hg
         WamfSlwPAJaWfB6LhHc9zUadpJTuTDA/+jQd2F7OrQJrLud8hWMy7u1YWFe5Sl2t0EXc
         HPYwSCCtRYbi55Xnx/lQIOSLeDJzV/ka/h96Kxr3AZi/+uDoUxpMWXaWmXhsFdp96ybo
         iz8VlHZarj55VK6P45pGVucoHhHhQogjXf8neBUDXxbAgxBTP1ljpjU6WIzIwNMW/emV
         1HC67ru+hFlygI8c77hzm3mAdbbcc0CmzfJzx8uAqrUNUijiY0P0o2F/UKjuNZW/s/Go
         iBZQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=UiCLVt0P;
       spf=pass (google.com: best guess record for domain of batv+67ffa2baba6e7f73c13c+5878+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+67ffa2baba6e7f73c13c+5878+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by mx.google.com with ESMTPS id i4si3893318pfo.99.2019.09.27.12.20.46
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Sep 2019 12:20:46 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of batv+67ffa2baba6e7f73c13c+5878+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from hch by bombadil.infradead.org with local (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDvnI-0007lx-Fz; Fri, 27 Sep 2019 19:20:44 +0000
Date: Fri, 27 Sep 2019 12:20:44 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Damien Le Moal <damien.lemoal@wdc.com>
Cc: linux-scsi@vger.kernel.org,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
	Alan Stern <stern@rowland.harvard.edu>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Justin Piszcz <jpiszcz@lucidpixels.com>
Subject: [usb-storage] Re: [PATCH 1/2] scsi: save/restore command resid for
 error handling
Message-ID: <20190927192044.GA24037@infradead.org>
References: <20190926220844.26631-1-damien.lemoal@wdc.com>
 <20190926220844.26631-2-damien.lemoal@wdc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190926220844.26631-2-damien.lemoal@wdc.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@infradead.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20170209 header.b=UiCLVt0P;
       spf=pass (google.com: best guess record for domain of
 batv+67ffa2baba6e7f73c13c+5878+infradead.org+hch@bombadil.srs.infradead.org
 designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+67ffa2baba6e7f73c13c+5878+infradead.org+hch@bombadil.srs.infradead.org
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

On Fri, Sep 27, 2019 at 07:08:43AM +0900, Damien Le Moal wrote:
> When a command is terminated with CHECK CONDITION and request sense
> executed by hijacking the command descriptor, the original command resid
> is lost and replaced with the resid from the execution of request sense.
> If based on the obtained sense data the command is aborted and not
> retried, the resid that will be seen by drivers such as sd will be the
> resid of the request sense execution and not the value from the original
> command failure. Make sure this does not happen by adding resid as part
> of the command information saved using struct scsi_eh_save.
> 
> Cc: stable@vger.kernel.org
> Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
> ---
>  drivers/scsi/scsi_error.c | 2 ++
>  include/scsi/scsi_eh.h    | 1 +
>  2 files changed, 3 insertions(+)
> 
> diff --git a/drivers/scsi/scsi_error.c b/drivers/scsi/scsi_error.c
> index 1c470e31ae81..d4ac13979189 100644
> --- a/drivers/scsi/scsi_error.c
> +++ b/drivers/scsi/scsi_error.c
> @@ -967,6 +967,7 @@ void scsi_eh_prep_cmnd(struct scsi_cmnd *scmd, struct scsi_eh_save *ses,
>  	ses->data_direction = scmd->sc_data_direction;
>  	ses->sdb = scmd->sdb;
>  	ses->result = scmd->result;
> +	ses->resid = scsi_get_resid(scmd);

Don't we also need to reset the resid to 0 here as we do in the
queuecommand path?  That would take care of what you are trying to do
for usb-storage in the next patch in generic code.

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190927192044.GA24037%40infradead.org.
