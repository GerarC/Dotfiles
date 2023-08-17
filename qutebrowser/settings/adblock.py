from qutebrowser.api.interceptor import Request

def filter_youtube(info: Request):
    '''Blocks the given request if it's an Ad'''
    url = info.request_url
    if (
        url.host() == 'www.youtube.com'
        and url.path() == '/get_video_info'
        and '&sdformat=' in url.query()
    ): info.block()

